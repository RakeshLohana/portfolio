import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Controller extends GetxController {
  RxInt selectedIndex = 0.obs;

  RxList iconData = [FontAwesomeIcons.whatsapp,FontAwesomeIcons.linkedin,FontAwesomeIcons.facebook,FontAwesomeIcons.google].obs;
  RxList rowNames = ["Home", "About", "Resume", "Testmonial", "ContactMe"].obs;

  void changenavItemColor(int index) {
    selectedIndex.value = index;
  }
}
