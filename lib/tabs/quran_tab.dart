import 'package:flutter/material.dart';
import 'package:islamy/sura_model.dart';
import 'package:islamy/them_data.dart';

import '../sura_ditalis.dart';

class QuranTab extends StatelessWidget {
  List<String>SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/quran_screen_logo.png"),
            Divider(
              color:MyThemData.primarryColor ,
              thickness: 2,
            ),
            Text("Sura Name",
                style:Theme.of(context)
                    .textTheme.bodyMedium!.copyWith(
                  color: MyThemData.blackColor
                )),
            Divider(
              color:MyThemData.primarryColor ,
              thickness: 2,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context,index)=>Divider(
                  thickness: 1,
                  color: MyThemData.primarryColor,
                  endIndent: 40,indent: 40,
                ),
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(
                        context, SuraDetailsScreen.routName,
                    arguments: SuraModel(SuraNames[index],index));
                  },
                  child: Center(
                    child: Text(SuraNames[index],
                      style: Theme.of(context).textTheme.bodySmall,),
                  ),
                );
              },
           itemCount:SuraNames.length ,),
            )
          ],
        ),
      ),
    );


  }
}
