import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            width.toString()+" TabView",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
