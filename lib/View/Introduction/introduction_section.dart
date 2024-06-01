import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_socket_io/Controller/controller.dart';
import 'package:chat_socket_io/constants/app_assets.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/common_widgets/animated_text_kit_style.dart';
import 'package:chat_socket_io/common_widgets/app_strings_list.dart';
import 'package:chat_socket_io/common_widgets/custom_button.dart';
import 'package:chat_socket_io/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/common_widgets/custom_text.dart';
import 'package:chat_socket_io/common_widgets/social_media_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionSection extends StatelessWidget {
  final WebController controller;
  const IntroductionSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 680,
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: Get.width,
      decoration: BoxDecoration(
        color: MyColor.purple,
      ),
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
                      MouseRegion(
                        onEnter: (event) => controller.onEntered(true),
                        onExit: (event) => controller.onEntered(false),
                        onHover: (event) {
                          controller.changenavItemColor(index);
                        },
                        child: Container(
                          height: Get.height * 0.08,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: controller.rowNames[index],
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: controller.selectedIndex == index &&
                                        controller.onHover == true
                                    ? MyColor.orange
                                    : MyColor.white,
                              ),
                              Visibility(
                                visible: controller.onHover.value == true &&
                                    controller.selectedIndex == index,
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: Duration(milliseconds: 1),
                                  height: Get.height * 0.013,
                                  width: Get.width * 0.058,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: MyColor.orange),
                                ),
                              )
                            ],
                          ),
                        ),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialMediaIcons(
                    controller: controller,
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                  ),
                  h2(),
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
                      repeatForever: true,
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
                  ),
                  h3(),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onHoverButton: (p0) {},
                          onEnterButton: (event) =>
                              controller.onEnteredButton(true),
                          onExitButton: (event) =>
                              controller.onEnteredButton(false),
                          text: "Hire Me",
                          width: Get.width * 0.14,
                          textColor: controller.onHoverButton.value
                              ? MyColor.orange
                              : MyColor.white,
                          height: Get.height * 0.07,
                          borderColor: controller.onHoverButton.value
                              ? MyColor.orange
                              : MyColor.white,
                          borderRadius: 30,
                        ),
                        w2(),
                        CustomButton(
                          onEnterButton: (event) =>
                              controller.onEnteredButton2(true),
                          onExitButton: (event) =>
                              controller.onEnteredButton2(false),
                          text: "Get Resume",
                          width: Get.width * 0.14,
                          height: Get.height * 0.07,
                          textColor: controller.onHoverButton2.value
                              ? MyColor.orange
                              : MyColor.white,
                          borderColor: controller.onHoverButton2.value
                              ? MyColor.white
                              : MyColor.orange,
                          color: controller.onHoverButton2.value
                              ? MyColor.white
                              : MyColor.orange,
                          borderRadius: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Obx(
              () => MouseRegion(
                onEnter: (event) => controller.onImageHover(true),
                onExit: (event) => controller.onImageHover(false),
                child: AnimatedContainer(
                  height: 350,
                  width: 350,
                  duration: Duration(milliseconds: 300),
                  transform: controller.onImageHoverButton.value
                      ? controller.transform(1.05)
                      : Matrix4.identity(),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            MyAssets.profile_picture_round,
                          ))),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
