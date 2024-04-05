import 'package:chat_socket_io/Controller/controller.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/constants/common_widgets/app_strings_list.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    
    super.key,
    required this.controller, required this.mainAxisAlignment,
    
  });

  final WebController controller;
  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return 
    
       Obx(
        () => Row(
          mainAxisAlignment: mainAxisAlignment,
            children: List.generate(
          3,
          (index) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (event) => controller.onSocialMediaHoverButton(true),
                onExit: (event) => controller.onSocialMediaHoverButton(false),
                onHover: (event) {
                  controller.selectIconIndex(index);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  transform: controller.selectedIcon == index &&
                          controller.onSocialMediaButton.value == true
                      ? controller.transform(1.2)
                      : Matrix4.identity(),
                  child: Icon(
                    MyLists.iconList[index],
                    color: MyColor.white,
                  ),
                ),
              ),
              w1(),
            ],
          ),
        )));
   
  
  }
}
