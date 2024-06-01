import 'package:chat_socket_io/Controller/controller.dart';
import 'package:chat_socket_io/constants/app_assets.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/common_widgets/app_strings_list.dart';
import 'package:chat_socket_io/common_widgets/banner_widget.dart';
import 'package:chat_socket_io/common_widgets/custom_button.dart';
import 'package:chat_socket_io/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/common_widgets/custom_text.dart';
import 'package:chat_socket_io/common_widgets/custom_text_form_field.dart';
import 'package:chat_socket_io/common_widgets/social_media_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ContactMe extends StatelessWidget {
  final WebController controller;
  const ContactMe({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BannerWidget(
            subTitle: "Lets keep in touch",
            title: "Contact Me",
          ),
          h4(),
          Container(
            width: Get.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: MyColor.text_field_color,
                  blurRadius: 5,
                  offset: Offset(2, 2))
            ],
             color: MyColor.purple,
              borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025,),
            padding: EdgeInsets.all(Get.width * 0.03),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Get In Touch ",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  w1(),
                  Icon(
                    Icons.mail,
                    size: 25,
                    color: MyColor.white,
                  ),
                ],
              ),
              h2(),
              SocialMediaIcons(
                controller: controller,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              h2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Send your email",
                          color: MyColor.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                        h1(),
                        Image.asset(
                          MyAssets.mail,
                          scale: 2,
                        )
                        // Container(
                        //   height: Get.height,
                        //   width: Get.width,
                        //   decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //           image: )),
                        // )
                      ],
                    ),
                  ),
                  Container(
                    // height: Get.height * 0.6,
                    width: Get.width * 0.37,
                    decoration: BoxDecoration(
                      color: MyColor.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: (Get.width * 0.03),),
                    padding: EdgeInsets.all(Get.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(text: "Name"),
                        CustomTextFormField(text: "Email"),
                        CustomTextFormField(text: "Message"),
                        CustomButton(
                          height: Get.height * 0.055,
                          width: Get.width * 0.1,
                          text: "Send",
                          color: MyColor.purple,
                          borderColor: MyColor.orange,
                          borderRadius: 30,
                          isIcon: true,
                          icon: Icons.send,
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
