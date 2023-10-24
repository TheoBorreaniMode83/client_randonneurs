import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';


class CustomTextButtomStyle{
  
  CustomTextStyle _customTextStyle = CustomTextStyle();
  Color? _backgroundColor;
  Color? _foregroundColor;
  EdgeInsets? _padding;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomTextButtomStyle setCustomTextStyle(CustomTextStyle customTextStyle){
    _customTextStyle=customTextStyle;
    return this;}
  CustomTextButtomStyle setBackgroundColor(Color backgroundColor){
    _backgroundColor=backgroundColor;
    return this;}
  CustomTextButtomStyle setForegroundColor(Color foregroundColor){
    _foregroundColor=foregroundColor;
    return this;}
  CustomTextButtomStyle setPadding(EdgeInsets padding){
    _padding=padding;
    return this;
  }
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  CustomTextStyle getCustomText(){
    return _customTextStyle;}
  Color? getBackgroundColor(){
    return _backgroundColor;}
  Color? getForegroundColor(){
    return _foregroundColor;}
  EdgeInsets? getPadding(){
    return _padding;}
    
}
