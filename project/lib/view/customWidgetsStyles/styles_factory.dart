import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';


class StyleFactory{
  //---------------------------------------------------------------------
  //
  //---------------------------------------------------------------------
  static CustomTextStyle createCustomTextStyleTitle(){
    CustomTextStyle customTextStyle = CustomTextStyle();
    customTextStyle
      .setFontSize(40);
    return customTextStyle;
  }
  static CustomTextStyle createCustomTextStyleSubTitle(){
    CustomTextStyle customTextStyle = CustomTextStyle();
    customTextStyle
      .setFontSize(20);
    return customTextStyle;
  }
  //---------------------------------------------------------------------
  //
  //---------------------------------------------------------------------
  static CustomContainerStyle createCustomContainerStyleSpace(){
    CustomContainerStyle customContainerStyle = CustomContainerStyle();
    customContainerStyle
      .setColor(Colors.transparent)
      .setMargin(const EdgeInsets.symmetric(vertical: 15.0));
    return customContainerStyle;
  }
  //---------------------------------------------------------------------
  //
  //---------------------------------------------------------------------
  static CustomTextFormFieldStyle createCustomTextFormFieldStyleBasic(){
    CustomTextFormFieldStyle customTextFormFieldStyle = CustomTextFormFieldStyle();
    customTextFormFieldStyle
      .setFilled(true)
      .setFillColor(Colors.white)
      .setLabelColor(Colors.black)
      .setMinLines(1)
      .setMaxLines(1)
      .setLabelSize(10);
    return customTextFormFieldStyle;
  }

  static CustomTextFormFieldStyle createCustomTextFormFieldStyleSecret(){
    CustomTextFormFieldStyle customTextFormFieldStyle = CustomTextFormFieldStyle();
    customTextFormFieldStyle
      .setFilled(true)
      .setFillColor(Colors.white)
      .setObscureText(true)
      .setMinLines(1)
      .setMaxLines(1);
    return customTextFormFieldStyle;
  }
  //---------------------------------------------------------------------
  //
  //---------------------------------------------------------------------
  static CustomTextButtomStyle createCustomTextButtomStyleBasic(){
    CustomTextStyle customTextStyle = CustomTextStyle();
    customTextStyle
      .setColor(Colors.black);
    CustomTextButtomStyle customTextButtomStyle = CustomTextButtomStyle();
    customTextButtomStyle
      .setBackgroundColor(const Color.fromRGBO(186, 218, 85, 0) 
      .withOpacity(1))
      .setCustomTextStyle(customTextStyle)
      .setPadding(const EdgeInsets.symmetric(vertical:10));
    return customTextButtomStyle;
  }
  //---------------------------------------------------------------------
  //
  //---------------------------------------------------------------------
}