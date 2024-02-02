import 'package:bookly_app_test/features/home/presentation/views/widgets/item_book_widget.dart';
import 'package:flutter/material.dart';

class CustomListViewBooks extends StatelessWidget {
  const CustomListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ItemBookWidget();
        },
      ),
    );
  }
}
