import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';



class ComposentSearch extends StatelessWidget{

  CustomDropdownButtonEvent customDropdownButtonEvent = CustomDropdownButtonEvent();
  CustomDropdownButtonStyle customDropdownButtonStyle = CustomDropdownButtonStyle();
  late CustomDropdownButtonContent a;

  CustomTextFormFieldStyle customTextFormFieldStyle = CustomTextFormFieldStyle();
  CustomTextFormFieldValidator customTextFormFieldValidator = CustomTextFormFieldValidator();
  CustomTextFormFieldEvent customTextFormFieldEvent = CustomTextFormFieldEvent();
  CustomTextFormFieldContent customTextFormFieldContent = CustomTextFormFieldContent();
  final controller = TextEditingController();

  ComposentSearch ({Key? key,required List<String> items,required Function wrapSetState,required CustomDropdownButtonContent customDropdownButtonContent}){
    
    a = customDropdownButtonContent;

    customDropdownButtonEvent
      .setOnChanged((String? p0) {
        customDropdownButtonContent.setDropdownValue(p0!);
        wrapSetState(); 
      });
    customDropdownButtonStyle
      .setColor(Colors.white);
    customTextFormFieldStyle
      .setFillColor(Colors.white)
      .setFilled(true);
  }



  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Container(
            child: CustomDropdownButton(
              customDropdownButtonContent: a,
              customDropdownButtonEvent: customDropdownButtonEvent,
              customDropdownButtonStyle: customDropdownButtonStyle,
          ),),         
          Container(
              padding: EdgeInsets.all(20),
              width: 100,
              alignment: Alignment.center,
              child: CustomTextFormField(
                customTextFormFieldStyle: customTextFormFieldStyle,
                customTextFormFieldValidator: customTextFormFieldValidator,
                customTextFormFieldEvent: customTextFormFieldEvent,
                customTextFormFieldContent: customTextFormFieldContent,
                controller: controller))
          ],
      )
    );
  }
} 