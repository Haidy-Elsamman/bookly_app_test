import 'package:bookly_app_test/features/home/presentation/views/widgets/best_seller_list_view_widget.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/custom_list_view_books.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  HomeAppBarWidget(),
                  CustomListViewBooks(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListViewWidget(),
          ),
        ],
      ),
    );
  }
}
