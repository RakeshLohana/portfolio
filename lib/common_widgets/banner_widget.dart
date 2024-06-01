import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const BannerWidget({
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: title,
          fontSize: 26  ,
          fontWeight: FontWeight.w700,
          color: MyColor.purple,
        ),
        CustomText(
          text: subTitle,
          fontSize: 15,
          color: MyColor.purple,
        ),
        h1(),
        Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            DividerWidget(),
            Container(
              height: 10,
              width: Get.width * 0.027,
              decoration: BoxDecoration(
                  color: MyColor.orange,
                  borderRadius: BorderRadius.circular(30)),
            ),
            DividerWidget(),
          ]),
        )
      ],
    ));
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: Get.width * 0.04,
      decoration: BoxDecoration(
          color: MyColor.black, borderRadius: BorderRadius.circular(30)),
    );
  }
}
