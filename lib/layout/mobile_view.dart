import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            width.toString() + " MobileView",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
