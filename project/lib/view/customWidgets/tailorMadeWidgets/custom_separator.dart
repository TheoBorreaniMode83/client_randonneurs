import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';

class CustomSeparator extends StatelessWidget{


  const CustomSeparator ({Key? key,
  }):super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return Container(
      color:Colors.black,
      height: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
    );
  }
} 