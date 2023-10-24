import 'package:flutter/material.dart';

class CustomDropdownButtonStyle{

  Color? _color;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomDropdownButtonStyle setColor(Color color){
    _color=color;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  Color? getColor(){
    return _color;}
}
