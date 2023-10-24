import 'package:flutter/material.dart';

class CustomTextFormFieldStyle{

  String? _labelText;
  Color? _labelColor;
  double? _labelSize;
  bool? _filled;
  Color? _fillColor;
  Radius _radius = const Radius.circular(0);
  bool _obscureText = false;
  bool _suffixIconIsVisible=false;
  Widget _icon = const Icon(Icons.clear);
  int? _minLines;
  int? _maxLines;
  String? _hintText;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------

  CustomTextFormFieldStyle setLabelText(String labelText){
    _labelText=labelText;
    return this;}
  CustomTextFormFieldStyle setLabelColor(Color labelColor){
    _labelColor=labelColor;
    return this;}
  CustomTextFormFieldStyle setLabelSize(double labelSize){
    _labelSize=labelSize;
    return this;}
  CustomTextFormFieldStyle setFilled(bool filled){
    _filled=filled;
    return this;}
  CustomTextFormFieldStyle setFillColor(Color backgroundColor){
    _fillColor=backgroundColor;
    return this;}
  CustomTextFormFieldStyle setRadius(Radius radius){
    _radius = radius;
    return this;}
  CustomTextFormFieldStyle setObscureText(bool obscureText){
    _obscureText = obscureText;
    return this;}
  CustomTextFormFieldStyle setIconIsVisible(bool suffixIconIsVisible){
    _suffixIconIsVisible = suffixIconIsVisible;
    return this;}
  CustomTextFormFieldStyle setIcon(Widget icon){
    _icon = icon;
    return this;}
  CustomTextFormFieldStyle setMinLines(int minLines){
    _minLines = minLines;
    return this;}
  CustomTextFormFieldStyle setMaxLines(int maxLines){
    _maxLines = maxLines;
    return this;}
  CustomTextFormFieldStyle setHintText(String hintText){
    _hintText = hintText;
  return this;}

  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------

  String? getLabelText(){
    return _labelText;}
  Color? getLabelColor(){
    return _labelColor;}
  double? getLabelSize(){
    return _labelSize;}
  bool? getFilled(){
    return _filled;}
  Color? getFillColor(){
    return _fillColor;}
  Radius getRadius(){
    return _radius;}
  bool getObscureText(){
    return _obscureText;}
  bool getSuffixIconIsVisible(){
    return _suffixIconIsVisible;}
  Widget getIcon(){
    return _icon;}
  int? getMinLines(){
    return _minLines;}
  int? getMaxLines(){
    return _maxLines;}
  String? getHintText(){
    return _hintText;}

}
