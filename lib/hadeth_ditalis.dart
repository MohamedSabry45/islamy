import 'package:flutter/material.dart';
import 'package:islamy/hadeth_model.dart';
import 'package:islamy/them_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var arges = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              arges.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        body:Card(
          margin: EdgeInsets.all(14),
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)

            ),
          ),
          elevation:12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              separatorBuilder: (context,index)=>Divider(
                color: MyThemData.primarryColor,
                thickness: 1,
                  endIndent: 40,
                  indent: 40,
              ),
              itemBuilder: (context,index){
                return Text("${arges.content[index]}($index+1)",
                textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),);

              },
              itemCount: arges.content.length,
              ),

          ),
        ) ,
      ),
    );
  }
}
