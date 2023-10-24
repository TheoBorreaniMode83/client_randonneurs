import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';

class CustomText extends StatelessWidget{

  final CustomTextStyle customTextStyle;

  const CustomText ({Key? key,
    required this.customTextStyle,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context)
  {
    return Text(
      customTextStyle.getContent(),
      style: TextStyle(
        fontSize: customTextStyle.getFontSize(),
        fontWeight: customTextStyle.getFontWeight(),
        color: customTextStyle.getColor(),),
    );
  }
} 