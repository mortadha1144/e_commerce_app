
import 'package:e_commerce_app/Features/home/views/widgets/custom_search_field.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/Features/product/providers/products_query_provider.dart';
import 'package:e_commerce_app/Features/product/views/widgets/sort_popup_menu.dart';
import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:e_commerce_app/core/utils/network/network_exceptions.dart';
import 'package:e_commerce_app/core/utils/search_base.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:e_commerce_app/core/utils/widgets/product_card.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaginatedProductsGridView extends StatefulHookConsumerWidget {
  final String? category;
  const PaginatedProductsGridView({super.key, this.category});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllProductsViewState();
}

class _AllProductsViewState extends ConsumerState<PaginatedProductsGridView> {
  @override
  Widget build(BuildContext context) {
    final isSearch = useState<bool>(false);
    final searchController = useTextEditingController();
    final filter =
        useState<ProductsFilter>(ProductsFilter(category: widget.category));
    final query = ref.watch(productQueryProvider(filter.value));

    return Scaffold(
      appBar: _buildAppBar(
        isSearch: isSearch,
        searchController: searchController,
        filter: filter,
      ),
      body: SafeArea(
        child: FirestoreQueryBuilder<Map<String, dynamic>>(
          query: query,
          builder: (context, snapshot, child) {
            if (snapshot.isFetching) {
              return const CustomLoadingIndicator();
            }
            if (snapshot.hasError) {
              return CustomErrorWidget(
                error: NetworkExceptions.getDioException(snapshot.error),
                onRetry: () {
                  ref
                      .read(productQueryProvider(filter.value).notifier)
                      .getAllProducts(filter.value);
                },
              );
            }
            return _buildGridView(snapshot);
          },
        ),
      ),
    );
  }

  GridView _buildGridView(QueryBuilderMap snapshot) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: snapshot.docs.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        if (snapshot.hasMore && index + 1 == snapshot.docs.length) {
          snapshot.fetchMore();
        }
        final product = ProductModel.fromJson(snapshot.docs[index].data());
        return ProductCard(
          product: product,
        );
      },
    );
  }

  AppBar _buildAppBar({
    required ValueNotifier<bool> isSearch,
    required TextEditingController searchController,
    required ValueNotifier<ProductsFilter> filter,
  }) {
    final searchDeBouncer = TimeDeBouncer(milliseconds: 500);
    return AppBar(
      title: isSearch.value
          ? CustomSearchField(
              controller: searchController,
              onChanged: (value) {
                searchDeBouncer.run(() {
                  ref
                      .read(productQueryProvider(filter.value).notifier)
                      .search(value, widget.category);
                });
              },
            )
          : Text('${widget.category ?? 'All'} Products'),
      actions: isSearch.value
          ? [
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  isSearch.value = false;
                  if (searchController.text.isNotEmpty) {
                    searchController.clear();

                    searchDeBouncer.run(() {
                      ref
                          .read(productQueryProvider(filter.value).notifier)
                          .getAllProducts(filter.value);
                    });
                  }
                },
              ),
            ]
          : [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => isSearch.value = true,
              ),
              SortPopupMenu(
                sorts: sorts,
                selectedSort: filter.value.sort,
                onSelected: (value) {
                  filter.value = filter.value.copyWith(sort: value);
                  ref
                      .read(productQueryProvider(filter.value).notifier)
                      .getAllProducts(filter.value);
                },
              ),
            ],
    );
  }

  Map<Sort, String> get sorts => {
        const Sort(value: 'title', descending: false): 'Title',
        const Sort(value: 'rating.rate', descending: true): 'Rating',
        const Sort(value: 'price', descending: false): 'Price Asc',
        const Sort(value: 'price', descending: true): 'Price Desc',
      };
}
