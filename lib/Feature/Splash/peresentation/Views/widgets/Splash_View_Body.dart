import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:bookly_app/Feature/Splash/peresentation/Views/widgets/sliding_animation.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/Home_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHomeViews();
  }



  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsDate.logo),
        const SizedBox(
          height: 4,
        ),
        sliding_Animation(slidinganimation: slidinganimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds:1500));

    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
    void navigateToHomeViews() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration:ktranstionduration);
    });
  }
}
