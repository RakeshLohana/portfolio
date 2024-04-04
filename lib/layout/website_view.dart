import 'package:chat_socket_io/Controller/controller.dart';
import 'package:chat_socket_io/View/Introduction/introduction_section.dart';
import 'package:chat_socket_io/constants/app_color.dart';
import 'package:chat_socket_io/constants/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebsiteView extends StatefulWidget {
  const WebsiteView({super.key});

  @override
  State<WebsiteView> createState() => _WebsiteViewState();
}

class _WebsiteViewState extends State<WebsiteView> {
  late final Controller controller;

  @override
  void initState() {
    controller = Get.put(Controller());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column( children: [
        IntroductionSection(controller: controller),
      ]),
    );
  }
}
