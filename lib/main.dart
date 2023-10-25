import 'package:flutter/material.dart';
import 'package:islamy/hadeth_ditalis.dart';
import 'package:islamy/home.dart';
import 'package:islamy/sura_ditalis.dart';
import 'package:islamy/them_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName ,
        routes: {
          HomeScreen.routeName:(context)=> HomeScreen(),
          SuraDetailsScreen.routName:(context)=> SuraDetailsScreen(),
          HadethDetails.routeName:(context)=> HadethDetails(),


        },
        theme: MyThemData.lightTheme

    );
  }
//41 سوره فصلت
}
