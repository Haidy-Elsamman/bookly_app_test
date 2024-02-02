import 'package:bookly_app_test/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemBookWidget extends StatelessWidget {
  const ItemBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 18),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.bookImage),
            ),
          ),
        ),
      ),
    );
  }
}
