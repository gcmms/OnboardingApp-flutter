import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  int countPageView = 0;

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationCliclick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  } 

  void nextPage() {
    if(currentPageIndex.value != countPageView) {
      final page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  bool lestPage() {
    return currentPageIndex.value == countPageView;
  }

  void skipPage() {
    currentPageIndex.value = countPageView - 1;
    pageController.jumpToPage(countPageView - 1);
  }

}
