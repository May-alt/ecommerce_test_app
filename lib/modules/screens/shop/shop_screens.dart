import 'package:flutter/material.dart';


class ShopScreens extends StatefulWidget {
  const ShopScreens({Key? key}) : super(key: key);

  @override
  State<ShopScreens> createState() => _ShopScreensState();
}

class _ShopScreensState extends State<ShopScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Text("Shope")),
      ),
    );
  }
}
