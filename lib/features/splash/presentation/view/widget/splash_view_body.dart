import 'package:chat_app/core/utils/app_router.dart';
import 'package:chat_app/features/splash/presentation/view/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToLogin();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlidingText(
        slidingAnimation: slidingAnimation,
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(-1, 3),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToLogin() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRouter.kLoginView);
      },
    );
  }
}
