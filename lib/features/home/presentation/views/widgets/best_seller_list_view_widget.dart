import 'package:bookly_app_test/features/home/presentation/views/widgets/item_best_seller_widget.dart';
import 'package:flutter/material.dart';

class BestSellerListViewWidget extends StatelessWidget {
  const BestSellerListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const ItemBestSellerWidget();
      },
    );
  }
}
