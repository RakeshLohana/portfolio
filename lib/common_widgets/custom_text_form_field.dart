import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          color: MyColor.gray,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        w1(),
        TextFormField(
          cursorColor: MyColor.gray,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColor.orange),
                borderRadius: BorderRadius.circular(10)),
            fillColor: MyColor.text_field_color,
            filled: true,
          ),
        ),
        h3(),
      ],
    );
  }
}
