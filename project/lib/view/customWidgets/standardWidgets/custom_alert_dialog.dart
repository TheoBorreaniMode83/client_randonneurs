import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_alert_dialog_style.dart';

class CustomAlertDialog{

  late List<Widget> children;
  late CustomAlertDialogStyle customAlertDialogStyle;

  CustomAlertDialog ({required this.customAlertDialogStyle,required this.children, required context}){
    showDialog(
      context: context,
      builder: (context) {return build(context);}
    );
  }
  
  Widget build(context)
  {
    return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0,),),),
        contentPadding: const EdgeInsets.only(top: 10.0,),
        title: _calcTitle(),
        actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Quiter"))],
        content: SizedBox(
          height: customAlertDialogStyle.getHeight(),
          width: customAlertDialogStyle.getWidth(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  child:SingleChildScrollView(child: Column(
                    children: children)))])))
    );
  }

  Widget? _calcTitle(){
    if(customAlertDialogStyle.getTitle()!=null){
      return Text(
          customAlertDialogStyle.getTitle()!,
          style: const TextStyle(fontSize: 24.0),
          );
    }
    return null;
  }
} 