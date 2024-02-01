import 'package:flutter/material.dart';

class CustomDetailsButtons extends StatelessWidget {
  const CustomDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(18),
                topRight: Radius.circular(0),
              ),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            fixedSize: const Size(170, 60),
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          onPressed: () {},
          child: const Text(r"19.99$"),
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(18),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(18),
              ),
            ),
            backgroundColor: Colors.deepOrange.shade300,
            foregroundColor: Colors.white,
            fixedSize: const Size(170, 60),
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {},
          child: const Text("Free Preview"),
        ),
      ],
    );
  }
}
