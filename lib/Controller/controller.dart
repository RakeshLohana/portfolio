import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedIcon = 0.obs;

  RxBool onHover = false.obs;
  RxBool onHoverButton = false.obs;
  RxBool onHoverButton2 = false.obs;
  RxBool onSocialMediaButton = false.obs;
  RxBool onImageHoverButton = false.obs;

  RxList rowNames = ["Home", "About", "Resume", "Testmonial", "ContactMe"].obs;

  void changenavItemColor(int index) {
    selectedIndex.value = index;
  }

  void onEntered(bool value) {
    onHover.value = value;
  }

  void onEnteredButton(bool value) {
    onHoverButton.value = value;
  }

  void onEnteredButton2(bool value) {
    onHoverButton2.value = value;
  }

  void onSocialMediaHoverButton(bool value) {
    onSocialMediaButton.value = value;
  }

  void onImageHover(bool value) {
    onImageHoverButton.value = value;
  }

  Matrix4 transform(double scaling) {
    return Matrix4.identity()..scale(scaling);
  }

  void selectIconIndex(int index) {
    selectedIcon.value = index;
  }
}
