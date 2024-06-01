import 'package:chat_socket_io/layout/mobile_view.dart';
import 'package:chat_socket_io/layout/responsive_layout.dart';
import 'package:chat_socket_io/layout/tablet_view.dart';
import 'package:chat_socket_io/layout/website_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(
        mobileBody: MobileView(),
        tabletBody: TabletView(),
        websiteBody: WebsiteView(),
      ),
    );
  }
}
