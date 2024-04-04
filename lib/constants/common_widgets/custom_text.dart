import 'package:chat_socket_io/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final VoidCallback? onTap;

  const CustomText(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.onTap,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
      
        style: GoogleFonts.poppins(
            color: color ?? MyColor.white,
          
            fontSize: fontSize ?? 12,
            fontWeight: fontWeight ?? FontWeight.w300),
      ),
    );
  }
}
