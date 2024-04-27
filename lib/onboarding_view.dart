import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboard_view_page.dart';
import 'onboarding_controller.dart';

class OnBoardingView extends StatelessWidget {

  static const route = '/onboard_view';

  OnBoardingController get controller => Get.put(OnBoardingController());
  final List<OnboardViewPage> pageList;
  final bool skipButtonVisibility;
  
  const OnBoardingView({
    super.key, 
    required this.pageList, 
    required this.skipButtonVisibility
  });

  @override
  Widget build(BuildContext context) {

    controller.countPageView = pageList.length;
    
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: pageList
            ),

            skipButtonView(),
            pageIndicatorView(),  
            nextPageView(),
          ],
        ),
      ),
    );
  }

  Positioned nextPageView() {
    return Positioned(
      bottom: 55,
      right: 25,
      child: ElevatedButton(
        onPressed: nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
          backgroundColor: Colors.black,
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 25,
        ),
      )
    );
  }

  Visibility skipButtonView() {
    return Visibility(
      visible: skipButtonVisibility,
      child: Positioned(
        top: 45,
        right: 10,
        child: TextButton(
          onPressed: skipPage,
          child: const Text('Pular'),
        ),
      )
    );
  }

  Positioned pageIndicatorView() {
    return Positioned(
      bottom: 55,
      left: 25,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationCliclick,
        count: pageList.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.black
        ),
      )
    );
  }

  Future<void> nextPage() async {
    OnBoardingController.instance.nextPage();
  }

  Future<void> skipPage() async {
    OnBoardingController.instance.skipPage();
  }
}