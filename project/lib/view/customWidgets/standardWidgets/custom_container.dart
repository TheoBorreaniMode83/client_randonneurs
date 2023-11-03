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
      color: customContainerStyle.getColor(),
      padding: customContainerStyle.getPadding(),
      margin: customContainerStyle.getMargin(),
      child: child,
    );
  }
} 