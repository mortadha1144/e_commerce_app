import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/data/models/product_order.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/features/cart/providers/submit_order_provider.dart';
import 'package:e_commerce_app/features/cart/views/widgets/cart_item_card.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_dismissible.dart';
import 'package:e_commerce_app/features/cart/views/widgets/submit_order_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartView extends StatefulHookConsumerWidget {
  const CartView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartViewState();
}

class _CartViewState extends ConsumerState<CartView> {
  @override
  Widget build(BuildContext context) {
    final cartItems = ref.watch(cartProvider);
    return Scaffold(
      appBar: buildAppBar(context, cartItems.length),
      body: buildItemsList(cartItems),
      // bottomNavigationBar: const CheckOurCart(),
    );
  }

  Widget buildItemsList(List<CartItemModel> items) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: items.isEmpty
                ? Center(
                    child: Text(
                      'No items in your cart yet!',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: CustomDismissible(
                            key: Key(item.product.id.toString()),
                            child: CartItemCard(card: item),
                            onDismissed: (_) => ref
                                .read(cartProvider.notifier)
                                .remove(item.product.id),
                          ),
                        );
                      },
                    ),
                  ),
          ),
          const CheckOurCart(),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, int totalItems) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '$totalItems items',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class CheckOurCart extends StatelessWidget {
  const CheckOurCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(.15),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.grey[50]!],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              const Spacer(),
              const Text('Add voucher code'),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer(builder: (context, ref, _) {
                final total = ref.watch(totalPricesProvider);
                return Text.rich(
                  TextSpan(
                    text: 'Total:\n',
                    children: [
                      TextSpan(
                        text: '\$$total',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
                width: 190,
                child: Consumer(builder: (context, ref, _) {
                  return CustomButton(
                    text: 'Check Out',
                    isLoading: ref.watch(submitOrderProvider).isLoading,
                    onPressed: () async {
                      final cartItems = ref.watch(cartProvider);
                      if (cartItems.isEmpty) {
                        context.showSnackBar('No items in your cart yet!');
                        return;
                      }
                      final submitDialog = await showDialog<bool>(
                        context: context,
                        builder: (context) => const SubmitOrderDialog(),
                      );
                      if (submitDialog != null && submitDialog) {
                        final items = cartItems
                            .map(
                              (item) => ProductOrder(
                                productId: item.product.id,
                                qty: item.quantity,
                              ),
                            )
                            .toList();
                        final submitOrder = await ref
                            .read(submitOrderProvider.notifier)
                            .run(items);

                        switch (submitOrder) {
                          case AsyncStateData<void>():
                            context.showSuccessSnackBar(
                                'Order submitted successfully');
                            break;
                          case AsyncStateError<void>(:final error):
                            context.showErrorMessage(error);
                            break;
                          default:
                            break;
                        }
                      }
                    },
                  );
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
