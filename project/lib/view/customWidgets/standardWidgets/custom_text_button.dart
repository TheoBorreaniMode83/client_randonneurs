import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';

class CustomTextButton extends StatelessWidget{

  final CustomTextButtomStyle customTextButtomStyle;
  final CustomTextButtomEvent customTextButtomEvent;

  const CustomTextButton ({Key? key,
    required this.customTextButtomStyle,
    required this.customTextButtomEvent,
  }):super(key: key);
  
  
  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: customTextButtomStyle.getPadding(),
      width: double.maxFinite,
      child: TextButton(
        onPressed: customTextButtomEvent.getOnPressed(),
        onLongPress: customTextButtomEvent.getOnLongPress(),
        style: TextButton.styleFrom(
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              width: 1.0,
              color: Colors.black,
            ), 
          ),
          backgroundColor: customTextButtomStyle.getBackgroundColor(),
          foregroundColor: customTextButtomStyle.getForegroundColor(),
        ),
        child: CustomText(
          customTextStyle: customTextButtomStyle.getCustomText(),
        )
      ),
    );
  }
} 