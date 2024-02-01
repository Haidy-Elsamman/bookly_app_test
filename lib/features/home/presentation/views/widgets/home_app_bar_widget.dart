import 'package:bookly_app_test/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logoImage,
          height: 100,
          width: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push('/searchScreen');
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          iconSize: 30,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
