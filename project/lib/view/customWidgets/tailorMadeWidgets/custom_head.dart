import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';


class CustomHead extends StatelessWidget{

  final CustomTextButtomEvent customTextButtomEvent;
  final CustomTextStyle customTextStyle;

  const CustomHead ({Key? key,
    required this.customTextButtomEvent,
    required this.customTextStyle
  }):super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.maxFinite,
      child: Row(
        children: [
        
          Expanded(
            flex: 3,
            child: CustomText(
              customTextStyle: customTextStyle),),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
              color: Colors.red,
              child:TextButton(
                onPressed: customTextButtomEvent.getOnPressed(),
                child: Text("retour")),),)
        ],
      ),
    );
  }
} 