import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';


class CustomTextFormField extends StatelessWidget{

  final CustomTextFormFieldStyle customTextFormFieldStyle;
  final CustomTextFormFieldValidator customTextFormFieldValidator;
  final CustomTextFormFieldEvent customTextFormFieldEvent;
  final CustomTextFormFieldContent customTextFormFieldContent;
  final TextEditingController controller;

  

  const CustomTextFormField ({Key? key,
    required this.customTextFormFieldStyle,
    required this.customTextFormFieldValidator,
    required this.customTextFormFieldEvent,
    required this.customTextFormFieldContent,
    required this.controller,
  }):super(key: key);

  String? _functionValidator(String? value){
    return customTextFormFieldValidator.testString(value);
  }

  Widget? _getButtom(){
    if(customTextFormFieldStyle.getSuffixIconIsVisible()){
      return IconButton(
        onPressed: customTextFormFieldEvent.getOnClickButtom(),
        icon: customTextFormFieldStyle.getIcon(),
      );
    }
    else{return null;}
  }

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
        onChanged: (String no){
          dynamic f=customTextFormFieldEvent.getOnChanged();
          f();
          },
        controller: controller,
        maxLength: customTextFormFieldContent.getMaxLength(),
        buildCounter: (BuildContext context, {int? currentLength, int? maxLength, bool? isFocused}){
          if(maxLength!=null){return Text("${currentLength.toString()}/${maxLength.toString()}");}
          else{return const Text("");}
          },
        obscureText: customTextFormFieldStyle.getObscureText(),
        //keyboardType:  TextInputType.multiline,
        textAlign: TextAlign.center,
        minLines: customTextFormFieldStyle.getMinLines(),
        maxLines: customTextFormFieldStyle.getMaxLines(),
        validator: (value) {return _functionValidator(value);},
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          hintText: customTextFormFieldStyle.getHintText(),
          suffixIcon: _getButtom(),
          labelText: customTextFormFieldStyle.getLabelText(),
          labelStyle: TextStyle(
            color: customTextFormFieldStyle.getLabelColor(),
            fontSize: customTextFormFieldStyle.getLabelSize()),
          filled: customTextFormFieldStyle.getFilled(),
          fillColor: customTextFormFieldStyle.getFillColor(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              customTextFormFieldStyle.getRadius(),
            ),
          ),
        ),
      style: const TextStyle(fontSize: 10),
      
    );
  }
} 