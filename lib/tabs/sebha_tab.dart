import 'package:flutter/material.dart';
import 'package:islamy/home.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> text=[
    "سبحان الله",
    "الحمد الله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int curIndex=0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Transform.rotate(
                  angle: angle,
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: () {
                        clickOnImage();
                      },
                      child: Image.asset(
                        "assets/images/body_sebha_logo.png",
                        height: size.height * 0.20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(
                  "assets/images/head_sebha_logo.png",
                  height: size.height * 0.10,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              text[curIndex],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
  void clickOnImage(){
    angle+=4;
    if(counter==33){
      counter=0;
      curIndex++;
      if(curIndex>3){
        curIndex=0;
      }
    }
    counter++;

    setState(() {

    });
  }
}
