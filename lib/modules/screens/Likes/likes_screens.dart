import 'package:flutter/material.dart';


class LikesScreens extends StatefulWidget {
  const LikesScreens({Key? key}) : super(key: key);

  @override
  State<LikesScreens> createState() => _LikesScreensState();
}

class _LikesScreensState extends State<LikesScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Text("Likes")),
      ),
    );
  }
}
