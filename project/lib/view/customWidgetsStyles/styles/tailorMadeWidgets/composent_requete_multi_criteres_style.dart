import 'package:flutter/material.dart';

class ComposentRequeteMultiCriteresStyle{

  Color _backgroundColor = Colors.black;
  Color _borderColor = Colors.black;

    ComposentRequeteMultiCriteresStyle setBackgroundColor( Color backgroundColor){
    _backgroundColor = backgroundColor;
    return this;}
    ComposentRequeteMultiCriteresStyle setBorderColor( Color borderColor){
    _borderColor = borderColor;
    return this;}

    Color getBackgroundColor(){
      return _backgroundColor;}
    Color getBorderColor(){
      return _borderColor;}
}