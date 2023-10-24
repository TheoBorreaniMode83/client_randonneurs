import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_container.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';

import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';



import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/responsiveWidgets/responsive_view.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';

import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});
  @override
  State<PageConnexion> createState() => _PageConnexion();
}

class _PageConnexion extends State<PageConnexion> {
  
  
  final _formKey = GlobalKey<FormState>();

  final CustomTextButtomStyle bouton1Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton1Event = CustomTextButtomEvent();

  final CustomTextButtomStyle bouton2Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton2Event = CustomTextButtomEvent();

  final CustomTextButtomStyle bouton3Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton3Event = CustomTextButtomEvent();

  final CustomTextButtomStyle bouton4Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton4Event = CustomTextButtomEvent();

  final CustomTextButtomStyle bouton5Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton5Event = CustomTextButtomEvent();

  final CustomTextButtomStyle bouton6Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent bouton6Event = CustomTextButtomEvent();

  

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[
            CustomTextButton(
              customTextButtomStyle: bouton1Style,
              customTextButtomEvent: bouton1Event),
            CustomTextButton(
              customTextButtomStyle: bouton2Style,
              customTextButtomEvent: bouton2Event),
            CustomTextButton(
              customTextButtomStyle: bouton3Style,
              customTextButtomEvent: bouton3Event),
            CustomTextButton(
              customTextButtomStyle: bouton4Style,
              customTextButtomEvent: bouton4Event),
            CustomTextButton(
              customTextButtomStyle: bouton5Style,
              customTextButtomEvent: bouton5Event),
            CustomTextButton(
              customTextButtomStyle: bouton6Style,
              customTextButtomEvent: bouton6Event),
          ],
        ),
      ),
    );
  }

  void tdest() async {

    Map<String, dynamic> content = {"id":"1234", "mdp":"mdp"};

    //print(Crypt.sha256('p@ssw0rd', salt: 'abcdefghijklmnop', rounds: 10000).hashCode.toString());
    String url = 'http://127.0.0.1:8000/obtenir_token';
    try{
          http.Response response = await http.post(Uri.parse(url), body: utf8.encode(jsonEncode(content)));
          print(response.body);
    }
    catch(e)
    {
      print(e.toString());
    }
    //print(response.body);
    if (_formKey.currentState!.validate()){
      
      Navigator.popAndPushNamed(context, "/pageNavigationApplication");
    }
  }

}