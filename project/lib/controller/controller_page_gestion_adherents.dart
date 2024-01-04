import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/wrapper.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';

class ControllerPageGestionAdherents{
  
  static Wrapper value1_0    = Wrapper(contentA: true) ;
  static Wrapper value1_1 = Wrapper(contentA: '=');
  static Wrapper value1_2 = Wrapper(contentA: 'vide');
  
  static Wrapper value2_0 = Wrapper(contentA: true);
  static Wrapper value2_1 = Wrapper(contentA: '=');
  static Wrapper value2_2 = Wrapper(contentA: 'vide');

  static Wrapper value3_0 = Wrapper(contentA: true);
  static Wrapper value3_1=Wrapper(contentA: '=');
  static Wrapper value3_2=Wrapper(contentA: 'vide');


  static Wrapper value4_0=Wrapper(contentA: true);
  static Wrapper value4_1=Wrapper(contentA: '=');

  static Wrapper value5_0=Wrapper(contentA: true);
  static Wrapper value5_1=Wrapper(contentA: '=');

  static Wrapper value6_0=Wrapper(contentA: true);
  static Wrapper value6_1=Wrapper(contentA: '=');

  static Wrapper value7_0=Wrapper(contentA: true);
  static Wrapper value8_0=Wrapper(contentA: true);
  

  static Wrapper value9_0=Wrapper(contentA: true);

  static TextEditingController  controlleur1 = TextEditingController();
  static TextEditingController  controlleur2 = TextEditingController();
  static TextEditingController  controlleur3 = TextEditingController();

  static CustomTextFormFieldStyle customTextFormFieldStyle1 = StyleFactory.createCustomTextFormFieldStyleBasic();
  static CustomTextFormFieldEvent customTextFormFieldEvent1 = CustomTextFormFieldEvent();
  static CustomTextFormFieldValidator customTextFormFieldValidator1 = CustomTextFormFieldValidator();
  static CustomTextFormFieldContent customTextFormFieldContent1 = CustomTextFormFieldContent();
  static final controller1 = TextEditingController();

  static CustomTextFormFieldStyle customTextFormFieldStyle2 = StyleFactory.createCustomTextFormFieldStyleBasic();
  static CustomTextFormFieldEvent customTextFormFieldEvent2 = CustomTextFormFieldEvent();
  static CustomTextFormFieldValidator customTextFormFieldValidator2 = CustomTextFormFieldValidator();
  static CustomTextFormFieldContent customTextFormFieldContent2 = CustomTextFormFieldContent();
  static final controller2 = TextEditingController();

}