import 'package:bookly_app_test/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimate();

    navigateToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logoImage),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: slidingAnimation,
                  child: const Text(
                    "Boooklyyyyyyy",
                    textAlign: TextAlign.center,
                  ));
            }),
      ],
    );
  }

  void initSlidingAnimate() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(animationController);
  }

  void navigateToHomeScreen() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
       
        GoRouter.of(context).push('/homeScreen');
      },
    );
  }
}
