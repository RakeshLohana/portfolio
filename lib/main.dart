// import 'package:chat_socket_io/layout/mobile_view.dart';
// import 'package:chat_socket_io/layout/responsive_layout.dart';
// import 'package:chat_socket_io/layout/tablet_view.dart';
// import 'package:chat_socket_io/layout/website_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(

//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ResponsiveLayout(
//         mobileBody: MobileView(),
//         tabletBody: TabletView(),
//         websiteBody: WebsiteView(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1633333, size.height * 0.0980000);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.6980000);
    path_0.quadraticBezierTo(size.width * 0.2422222, size.height * 0.8465000,
        size.width * 0.2966667, size.height * 0.8460000);
    path_0.cubicTo(
        size.width * 0.3519444,
        size.height * 0.8455000,
        size.width * 0.5463889,
        size.height * 0.7610000,
        size.width * 0.6600000,
        size.height * 0.6560000);
    path_0.quadraticBezierTo(size.width * 0.7530556, size.height * 0.5770000,
        size.width * 0.9411111, size.height * 0.6940000);
    path_0.lineTo(size.width * 0.9444444, size.height * 0.1080000);
    path_0.lineTo(size.width * 0.4777778, size.height * 0.0960000);
    path_0.lineTo(size.width * 0.1633333, size.height * 0.0980000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('S-Shaped ClipPath Example'),
      ),
      body: Center(
        child: CustomPaint(
          painter: RPSCustomPainter(),
          child: Container(
            width: 700,
            height: 800,
            // color: Colors.blue,
            child: Center(
              child: Text(
                'S-Shaped ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ));
}
