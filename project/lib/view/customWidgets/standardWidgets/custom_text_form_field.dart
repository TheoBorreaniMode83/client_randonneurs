import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';


class CustomTextFormField extends StatelessWidget{

  final CustomTextFormFieldStyle customTextFormFieldStyle;
  final CustomTextFormFieldValidator customTextFormFieldValidator;
  final CustomTextFormFieldEvent customTextFormFieldEvent;
  final TextEditingController controller;

  

  const CustomTextFormField ({Key? key,
    required this.customTextFormFieldStyle,
    required this.customTextFormFieldValidator,
    required this.customTextFormFieldEvent,
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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 70,
      child:TextFormField(
        onChanged: (String no){
          dynamic f=customTextFormFieldEvent.getOnChanged();
          f();
          },
        controller: controller,
        maxLength: 10,
        buildCounter: (BuildContext context, {int? currentLength, int? maxLength, bool? isFocused}) => Text("${currentLength.toString()}/${maxLength.toString()}"),
        obscureText: customTextFormFieldStyle.getObscureText(),
        //keyboardType:  TextInputType.multiline,
        textAlign: TextAlign.center,
        minLines: customTextFormFieldStyle.getMinLines(),
        maxLines: customTextFormFieldStyle.getMaxLines(),
        validator: (value) {return _functionValidator(value);},
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
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
      ),
    );
  }
} 