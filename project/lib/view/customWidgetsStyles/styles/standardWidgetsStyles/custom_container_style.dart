import 'package:flutter/material.dart';

class CustomContainerStyle{

  Color? _color;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;
  double _maxWidth = double.infinity;
  double _minWidth = 0;
  double _maxHeight = double.infinity;
  double _minHeight = 0;
  double? _width;
  double? _height;
  BoxBorder? _border;
  BorderRadiusGeometry? _borderRadius;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------

  /// Permet de modifier la couleur de fond du 'container'
  CustomContainerStyle setColor(Color color){
    _color=color;
    return this;}
  /// Permet de modifier la marge interne du 'container'
  CustomContainerStyle setPadding(EdgeInsetsGeometry padding){
    _padding = padding;
    return this;}
  /// Permet de modifier la marge externe du 'container'
  CustomContainerStyle setMargin(EdgeInsetsGeometry margin){
    _margin = margin;
    return this;}
  /// Permet de modifier la largeur maximal du 'container'
  CustomContainerStyle setMaxWidth(double maxWidth){
    _maxWidth = maxWidth;
    return this;}
  /// Permet de modifier la largeur minimal du 'container'
  CustomContainerStyle setMinWidth(double minWidth){
    _minWidth = minWidth;
    return this;}
  /// Permet de modifier la hauteur maximal du 'container'
  CustomContainerStyle setMaxHeight(double maxHeight){
    _maxHeight = maxHeight;
    return this;}
  /// Permet de modifier la hauteur minimal du 'container'
  CustomContainerStyle setMinHeight(double minHeight){
    _minHeight = minHeight;
    return this;}
  /// Permet de modifier la hauteur du 'container'
  CustomContainerStyle setHeight(double height){
    _height = height;
    return this;}
  /// Permet de modifier la largeur du 'container'
  CustomContainerStyle setWidth(double width){
    _width = width;
    return this;}
  /// Permet de modifier largeur et la couleur de 'border'
  CustomContainerStyle setBorder(BoxBorder border){
    _border = border;
    return this;}
  /// Permet de modifier l'arrondi du 'container'
  CustomContainerStyle setBorderRadius(BorderRadiusGeometry borderRadius){
    _borderRadius = borderRadius;
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
  double getMaxWidth(){
    return _maxWidth;}
  double getMinWidth(){
    return _minWidth;}
  double getMaxHeight(){
    return _maxHeight;}
  double getMinHeight(){
    return _minHeight;}
  double? getHeight(){
    return _height;}
  double? getWidth(){
    return _width;}
  BoxBorder? getBorder(){
    return _border;}
  BorderRadiusGeometry? getBorderRadius(){
    return _borderRadius;}
}
