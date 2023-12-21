import 'package:flutter/material.dart';

class Utility{
  static String calcSizeAppareil(BuildContext context ){
    if(MediaQuery.of(context).size.width < 650){
      return "isMobil";
    }
    else if(MediaQuery.of(context).size.width < 1250 && MediaQuery.of(context).size.width >= 650){
      return "isTablet";
    }
    else if(MediaQuery.of(context).size.width >= 1250){
      return "isComputer";
    }
    throw "error calcSizeAppareil";
    
  }


}