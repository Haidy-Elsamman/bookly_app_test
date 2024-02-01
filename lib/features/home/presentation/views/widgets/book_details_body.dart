import 'package:bookly_app_test/features/home/presentation/views/widgets/book_details_app_bar_widget.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/books_list_view_details_section.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/custom_details_buttons.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                BookDetailsAppBarWidget(),
                BooksDetailsSection(),
                CustomDetailsButtons(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                BooksListViewDetailsSection(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
