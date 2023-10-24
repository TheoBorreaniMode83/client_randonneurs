import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';

class CustomTextFormDate extends StatelessWidget{

  String title;

  CustomTextFormDate ({Key? key,
    required this.title,
  }):super(key: key);

   List<String> listDays(){
    List<String> days=[];
    for(int i= 1; i<=31 ; i++)
    {
      days.add(i.toString());
    }
    return days;
  }

  List<String> listYears(){
    List<String> years=[];
    for(int i=DateTime.now().year; i>=1900 ; i--)
    {
      years.add(i.toString());
    }
    return years;
  }

  Widget form(String titre,List<String> list){
    return Expanded(
      flex: 1,
      child: Column(children: [
        Text(titre),
        DropdownButtonFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          items: list.map((items) {
            return DropdownMenuItem(value: items, child: Text(items));
          }).toList(),
          onChanged: (value) {},
        )
      ],
      )
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100,
      width: 100,
      child: Column(children: [
        Text(title,),
        Row(
          children: [
            form("Jours",listDays()),
            form("Mois",["1","2","3","4","5","6","7","8","9","10","11","12"]),
            form("Année",listYears()),
          ],
        ),
      ],)
    );
  }
} 