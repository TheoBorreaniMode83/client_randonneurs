import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';

class CustomContainer extends StatelessWidget{

  final CustomContainerStyle customContainerStyle;
  final Widget? child;

  const CustomContainer ({Key? key,
    required this.customContainerStyle,
    this.child,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context)
  {
    return Container(
      constraints: BoxConstraints( 
        maxWidth: customContainerStyle.getMaxWidth(), 
        maxHeight: customContainerStyle.getMaxHeight(),
        minWidth: customContainerStyle.getMinWidth(),
        minHeight: customContainerStyle.getMinHeight(),),
      decoration: BoxDecoration(
            border: customContainerStyle.getBorder(),
            borderRadius: customContainerStyle.getBorderRadius(),
            color: customContainerStyle.getColor(),),
      height: customContainerStyle.getHeight(),
      width: customContainerStyle.getWidth(),
      padding: customContainerStyle.getPadding(),
      margin: customContainerStyle.getMargin(),
      child: child,
    );
  }
} 