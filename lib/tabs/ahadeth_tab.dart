import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/hadeth_ditalis.dart';
import 'package:islamy/hadeth_model.dart';
import 'package:islamy/them_data.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            thickness: 3,
            color: MyThemData.primarryColor,
          ),
          Text("Ahadeth",style: TextStyle(
            color: Colors.black,
          ),),
          Divider(
            thickness: 3,
            color: MyThemData.primarryColor,
          ),
          ListView.separated(
            separatorBuilder: (context,index)=>Divider(
              endIndent: 40,
              indent: 40,
              thickness: 2,
              color: MyThemData.primarryColor,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder:(context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, HadethDetails.routeName,
                arguments: allAhadeth[index]
                );
              },
              child: Text(
                allAhadeth[index].title,
              textAlign:TextAlign.center ,
              style:TextStyle(
                color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold,
              ) ,),
            );
          },itemCount: allAhadeth.length,)
        ],
      ),
    );
  }

  void loadHadeth() {

    rootBundle.loadString("assets/files/ahadeth.txt",).then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#",);
      for (int i = 0; i < ahadethList.length; i++) {
        String HadethOne = ahadethList[i];
        List<String> hadethOneLine = HadethOne.trim().split("\n");
        String title = hadethOneLine[0];
        hadethOneLine.removeAt(0);
        List<String> content = hadethOneLine;
        HadethModel hadethModel = HadethModel(title, content);

        allAhadeth.add(hadethModel);
      }
    }).catchError((e) {
    });
  }
}
