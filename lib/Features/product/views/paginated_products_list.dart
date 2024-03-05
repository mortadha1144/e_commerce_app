import 'package:e_commerce_app/Features/home/views/widgets/custom_search_field.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/Features/product/providers/special_offers_query_provider.dart';
import 'package:e_commerce_app/Features/product/views/widgets/product_list_tile.dart';
import 'package:e_commerce_app/Features/product/views/widgets/sort_popup_menu.dart';
import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:e_commerce_app/core/utils/search_base.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaginatedProductsList extends StatefulHookConsumerWidget {
  final ProductsFilter filter;
  const PaginatedProductsList({super.key, required this.filter});
  @override
  ConsumerState createState() => _PaginatedProductsListState();
}

class _PaginatedProductsListState extends ConsumerState<PaginatedProductsList> {
  @override
  Widget build(BuildContext context) {
    final isSearch = useState<bool>(false);
    final searchController = useTextEditingController();
    final filter = useState<ProductsFilter>(widget.filter);
    final query = ref.watch(specialOffersQueryProvider(filter.value));
    return Scaffold(
      appBar: _buildAppBar(
        isSearch: isSearch,
        searchController: searchController,
        filter: filter,
      ),
      body: SafeArea(
        child: FirestoreListView<ProductModel>(
          query: query,
          itemBuilder: (context, doc) {
            final product = doc.data();
            return ProductListTile(product: product);
          },
        ),
      ),
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
                      .read(specialOffersQueryProvider(filter.value).notifier)
                      .search(value, widget.filter);
                });
              },
            )
          : Text(
              'Special Offers: ${widget.filter.category?.name ?? widget.filter.subCategory?.name ?? ''}'),
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
                          .read(
                              specialOffersQueryProvider(filter.value).notifier)
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
                      .read(specialOffersQueryProvider(filter.value).notifier)
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
