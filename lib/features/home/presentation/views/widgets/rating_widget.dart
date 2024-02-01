import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            color: Colors.amber,
            FontAwesomeIcons.solidStar,
            size: 18,
          ),
        ),
        const Text(
          "4.7",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "(1965)",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(.6),
            ),
          ),
        ),
      ],
    );
  }
}
