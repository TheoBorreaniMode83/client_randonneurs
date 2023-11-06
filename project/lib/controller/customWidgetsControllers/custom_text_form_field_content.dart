import 'package:flutter/material.dart';

class CustomTextFormFieldContent{
  
  int? _maxLength;
  
  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------

  CustomTextFormFieldContent setMaxLength(int maxLength){
    _maxLength=maxLength;
    return this;}

  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------

  int? getMaxLength(){
    return _maxLength;}
}