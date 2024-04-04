import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_socket_io/Controller/controller.dart';
import 'package:chat_socket_io/constants/app_assets.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/constants/common_widgets/animated_text_kit_style.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionSection extends StatelessWidget {
  final Controller controller;
  const IntroductionSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.all(20),
      width: Get.width,
      color: MyColor.purple,
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            top: Get.height * 0.07,
            bottom: Get.height * 0.07,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Obx(
                  () => Row(
                    children: [
                      CustomText(
                        text: controller.rowNames[index],
                        onTap: () {
                          controller.changenavItemColor(index);
                        },
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: controller.selectedIndex == index
                            ? MyColor.orange
                            : MyColor.white,
                      ),
                      SizedBox(
                        width: Get.width * 0.04,
                      )
                    ],
                  ),
                ),
              )),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(
                  //     4,
                  //     (index) => IconButton(
                  //         icon: Icon(

                  //           size: 200,
                  //         ),
                  //         onPressed: () {}),
                  //   ),
                  // ),
                  RichText(
                    text: TextSpan(
                      text: 'Hello, ',
                      style: MyStyles.richTextSpan(MyColor.white),
                      children: [
                        TextSpan(
                            text: "I'm ",
                            style: MyStyles.richTextSpan(MyColor.white)),
                        TextSpan(
                            text: 'Rakesh',
                            style: MyStyles.richTextSpan(MyColor.orange)),
                      ],
                    ),
                  ),
                  h2(),

                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                            speed: MyStyles.animatedTextKitSpeed,
                            'Full stack App Dev 🧑‍💻',
                            textStyle: MyStyles.animatedTextKitStyle),
                        TypewriterAnimatedText(
                            speed: MyStyles.animatedTextKitSpeed,
                            'Flutter Enthusiast 📱',
                            textStyle: MyStyles.animatedTextKitStyle),
                        TypewriterAnimatedText(
                            speed: MyStyles.animatedTextKitSpeed,
                            'Java Dev 🍵',
                            textStyle: MyStyles.animatedTextKitStyle),
                        TypewriterAnimatedText(
                            speed: MyStyles.animatedTextKitSpeed,
                            'Backend Dev 🍃',
                            textStyle: MyStyles.animatedTextKitStyle),
                      ],
                      onTap: () {},
                    ),
                  ),
                  h2(),
                  CustomText(
                    text:
                        "Knack of building applications with frontend and back end operations",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        MyAssets.profile_picture_round,
                      ))),
            ),
          ],
        )
      ]),
    );
  }
}
