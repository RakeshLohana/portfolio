import 'package:chat_socket_io/common_widgets/custom_button.dart';
import 'package:chat_socket_io/constants/app_assets.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/common_widgets/banner_widget.dart';
import 'package:chat_socket_io/common_widgets/custom_sizes.dart';
import 'package:chat_socket_io/common_widgets/custom_text.dart';
import 'package:chat_socket_io/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.03),
      child: Column(
        children: [
          BannerWidget(title: "About Me", subTitle: "Why choose me?"),
          h3(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: Get.width * 0.095,
              ),
            decoration: BoxDecoration(
                color: MyColor.white,
                boxShadow: [
                  BoxShadow(
                      color: MyColor.text_field_color,
                      blurRadius: 7,
                      offset: Offset(3, 3))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            MyAssets.profile_picture,
                          ))),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(Get.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        textAlign: TextAlign.left,
                        lineSpacing: 2,
                        wordSpacing: 4,
                        text: MyStrings.aboutMeText,
                        color: MyColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      h5(),
                         CustomText(
                        textAlign: TextAlign.left,
                        lineSpacing: 2,
                        wordSpacing: 4,
                        text: MyStrings.hightHeading,
                        color: MyColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      h2(),
                      Column(
                        children: List.generate(MyStrings.highLights.length, (index) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                  Container(
                                    
                                    height: Get.height*0.03,
                                   width: Get.width*0.03,
                                
                                    decoration: BoxDecoration(
                                      color: MyColor.orange,
                                      shape: BoxShape.circle
                                
                                
                                    ),
                                    
                                
                                  ),
                                    w2(),
                                                          CustomText(
                                                        textAlign: TextAlign.left,
                                                        lineSpacing: 2,
                                                        wordSpacing: 4,
                                                        text: MyStrings.highLights[index],
                                
                                                        color: MyColor.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                
                                                
                                                                  
                                
                                ],),
                                       Icon(MyStrings.icons[index]),

                             
                              ],
                            ),
                          ],
                        )),
                      ),
                       
                       h5(),

                       Row(
                        children: [
                          CustomButton(
                            width: Get.width*0.125,
                            verticalPadding: Get.height*0.017,
                            color: MyColor.purple,
                            borderRadius: 30,

                            text: "Hire Me"),
                          w2(),
                          CustomButton(
                            width: Get.width*0.125,

                            verticalPadding: Get.height*0.017,
                            color: MyColor.orange,
                            
                            borderRadius: 30,
                            text: "Get Resume")
                        ],
                       )


                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
