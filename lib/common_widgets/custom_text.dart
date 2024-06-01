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
  final double? lineSpacing;
  final double? wordSpacing;

  const CustomText(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.onTap,
      this.lineSpacing,
      this.wordSpacing,
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
            height: lineSpacing??0.0,
            wordSpacing: wordSpacing??0.0,
          
            fontSize: fontSize ?? 12,
            fontWeight: fontWeight ?? FontWeight.w300),
      ),
    );
  }
}
