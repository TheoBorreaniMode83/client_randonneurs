import 'package:flutter/material.dart';

class CustomTextStyle{
  String _content = "/!\\ CustomText est vide";
  double? _fontSize;
  FontWeight? _fontWeight;
  Color? _color;
  
  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomTextStyle setContent(String content){
    _content=content;
    return this;}
  CustomTextStyle setFontSize(double fontSize){
    _fontSize=fontSize;
    return this;}
  CustomTextStyle setFontWeight(FontWeight fontWeight){
    _fontWeight=fontWeight;
    return this;}
  CustomTextStyle setColor(Color color){
    _color=color;
    return this;
  }
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  String getContent(){
    return _content;}
  double? getFontSize(){
    return _fontSize;}
  FontWeight? getFontWeight(){
    return _fontWeight;}
  Color? getColor(){
    return _color;}

}
