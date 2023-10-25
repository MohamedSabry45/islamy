import 'package:flutter/material.dart';
import 'package:islamy/tabs/sebha_tab.dart';

class HomeSebha  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child:SebhaTab()),
      ),
    );
  }
}