import 'package:bookly_app_test/features/search/presentaion/views/widgets/custom_text_field_search_widget.dart';
import 'package:bookly_app_test/features/search/presentaion/views/widgets/search_books_list_view_widget.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CustomTextFieldSearch(),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Results ",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(child: SearchBooksListViewWidget()),
      ],
    );
  }
}
