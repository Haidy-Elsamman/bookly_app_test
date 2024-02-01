import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsAppBarWidget extends StatelessWidget {
  const BookDetailsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.x,
          ),
          iconSize: 22,
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
          ),
          iconSize: 22,
        ),
      ],
    );
  }
}
