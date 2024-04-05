import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? borderColor;
  final VoidCallback? onTap;
  final Color? textColor;
  final IconData? icon;
  final bool isIcon;

  final Function(PointerEnterEvent)? onEnterButton;
  final Function(PointerExitEvent)? onExitButton;
  final Function(PointerHoverEvent)? onHoverButton;

  const CustomButton(
      {super.key,
      required this.text,
      this.color,
      this.borderRadius,
      this.borderColor,
      this.horizontalPadding,
      this.height,
      this.width,
      this.onTap,
      this.onEnterButton,
      this.textColor,
      this.onExitButton,
      this.onHoverButton,
      this.icon,
      this.isIcon = false,
      this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onEnterButton,
      onExit: onExitButton,
      onHover: onHoverButton,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 0,
              vertical: verticalPadding ?? 0),
          decoration: BoxDecoration(
              color: color ?? Colors.transparent,
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
              border: Border.all(color: borderColor ?? Colors.transparent)),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: text,
                fontSize: 18,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
              if (isIcon) w1(),
              if (isIcon)
                Icon(
                  icon,
                  size: 15,
                  color: MyColor.white,
                )
            ],
          )),
        ),
      ),
    );
  }
}
