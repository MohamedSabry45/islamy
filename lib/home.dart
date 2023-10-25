import 'package:flutter/material.dart';
import 'package:islamy/tabs/ahadeth_tab.dart';
import 'package:islamy/tabs/quran_tab.dart';
import 'package:islamy/tabs/radio_tab.dart';
import 'package:islamy/tabs/sebha_tab.dart';
import 'package:islamy/tabs/setting_tab.dart';
import 'package:islamy/them_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="Home";
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int index=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Background.png",
        width: double.infinity,
        fit: BoxFit.cover,),
        Scaffold(
          appBar: AppBar(
            title: Text("islami",
                style: Theme.of(context).textTheme.bodyLarge
            ),
            ),
          bottomNavigationBar:BottomNavigationBar(
            
            currentIndex: index,
            onTap: (value){
              index=value;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"))
                  ,label: "Quran",
              backgroundColor: MyThemData.primarryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"))
                  ,label: "Sebha",
                  backgroundColor: MyThemData.primarryColor),
              BottomNavigationBarItem(
                  icon:ImageIcon(AssetImage("assets/images/icon_radio.png"))
                  ,label: "Radio",
                  backgroundColor: MyThemData.primarryColor),
              BottomNavigationBarItem(
                  icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png"))
                  ,label: "Ahadeth",
                  backgroundColor: MyThemData.primarryColor),
              BottomNavigationBarItem(
                  icon:Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: MyThemData.primarryColor),

            ],
          ) ,
          body:tabs[index] ,
          ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab(),
  ];
}
