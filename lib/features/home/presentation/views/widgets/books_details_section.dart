import 'package:bookly_app_test/features/home/presentation/views/widgets/item_book_widget.dart';
import 'package:bookly_app_test/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const ItemBookWidget(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Rudyard Kipling',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white.withOpacity(.5),
          ),
        ),
        const RatingWidget(),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
