import 'package:chat_socket_io/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyles {
  static TextStyle animatedTextKitStyle =
      GoogleFonts.quando(color: MyColor.white, fontSize: Get.width * 0.025);

  static Duration animatedTextKitSpeed = Duration(milliseconds: 70);

  ///TextSpan
  static TextStyle richTextSpan(Color color) {
    return GoogleFonts.poppins(
        color: color, fontSize: 23, fontWeight: FontWeight.w600);
  }
}
