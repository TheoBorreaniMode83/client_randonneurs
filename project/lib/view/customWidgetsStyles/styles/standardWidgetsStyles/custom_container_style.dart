import 'package:flutter/material.dart';

class CustomContainerStyle{

  Color? _color;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;


  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomContainerStyle setColor(Color color){
    _color=color;
    return this;}
  CustomContainerStyle setPadding(EdgeInsetsGeometry padding){
    _padding = padding;
    return this;}
  CustomContainerStyle setMargin(EdgeInsetsGeometry margin){
    _margin = margin;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  Color? getColor(){
    return _color;}
  EdgeInsetsGeometry? getPadding(){
    return _padding;}
  EdgeInsetsGeometry? getMargin(){
    return _margin;}
}
