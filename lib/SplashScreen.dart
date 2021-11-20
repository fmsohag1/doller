import 'dart:async';

import 'package:doller/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>homepage()) , (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffcb5eee),Color(0xff4be1ec),],
          begin: FractionalOffset(0, 0),
          end: FractionalOffset(0,2),
          tileMode: TileMode.repeated
        )
      ),
      child: AnimatedOpacity(
          opacity: 1,
          duration: Duration(milliseconds: 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("images/money_bag_127px.png")
            ),
          ],
        ),
      ),
    );
  }
}
