import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: TextField(
        decoration: InputDecoration(
            border: outlineBorder(),
            focusedBorder: outlineBorder(),
            enabledBorder: outlineBorder(),
            suffixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            )),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    );
  }
}
