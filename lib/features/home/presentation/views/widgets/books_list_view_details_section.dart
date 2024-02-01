import 'package:bookly_app_test/features/home/presentation/views/widgets/custom_list_view_details_books.dart';
import 'package:flutter/material.dart';

class BooksListViewDetailsSection extends StatelessWidget {
  const BooksListViewDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
          Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomListViewDetailsBooks(),
                
      ],
    );
  }
}