import 'package:bookly_app_test/features/search/presentaion/views/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SearchBody(),
      ),
    );
  }
}
