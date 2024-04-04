import 'package:chat_socket_io/constants/responsive_layout_constants.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget websiteBody;
  final Widget tabletBody;
  final Widget mobileBody;

  const ResponsiveLayout(
      {super.key,
      required this.websiteBody,
      required this.tabletBody,
      required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= LayoutConstants.maxMobileWidth) {
          return mobileBody;
        } else if (constraints.maxWidth > LayoutConstants.maxMobileWidth &&
            constraints.maxWidth <= LayoutConstants.maxTabletWidth) {
          return tabletBody;
        }
        return websiteBody;
      },
    );
  }
}
