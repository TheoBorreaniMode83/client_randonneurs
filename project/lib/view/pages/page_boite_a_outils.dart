import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';

class PageBoiteAOutils extends StatefulWidget {
  const PageBoiteAOutils({super.key});
  @override
  State<PageBoiteAOutils> createState() => _PageBoiteAOutils();
}

class _PageBoiteAOutils extends State<PageBoiteAOutils> {
  
  
  final _formKey = GlobalKey<FormState>();

  final CustomTextStyle customTextStyle1 = CustomTextStyle();
  final CustomTextStyle customTextStyle2 = CustomTextStyle();
  final CustomTextStyle customTextStyle3 = CustomTextStyle();
  final CustomTextStyle customTextStyle4 = CustomTextStyle();
  final CustomTextStyle customTextStyle5 = CustomTextStyle();
  final CustomTextStyle customTextStyle6 = CustomTextStyle();


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

  final CustomTextStyle customHeadStyle = StyleFactory.createCustomTextStyleTitle();
  final CustomTextButtomEvent headEvent = CustomTextButtomEvent();

  @override
  void initState() {
    super.initState();

    customHeadStyle
      .setContent("Boîte à outils");
    headEvent
      .setOnPressed(() {app0();});

    customTextStyle1
      .setContent("Liste des certificats médicaux obsolètes");
    customTextStyle2
      .setContent("Mise en forme & coloriage des fichiers");
    customTextStyle3
      .setContent("Création du nouvel exercice");
    customTextStyle4
      .setContent("Recensement des incohérences");
    customTextStyle5
      .setContent("Accès aux Paramètres & Tarifs");
    customTextStyle6
      .setContent("Impression du bordeau de transmission");

    bouton1Style
      .setCustomTextStyle(customTextStyle1);
    bouton2Style
      .setCustomTextStyle(customTextStyle2);
    bouton3Style
      .setCustomTextStyle(customTextStyle3);
    bouton4Style
      .setCustomTextStyle(customTextStyle4);
    bouton5Style
      .setCustomTextStyle(customTextStyle5);
    bouton6Style
      .setCustomTextStyle(customTextStyle6);

    bouton1Event
      .setOnPressed(() { });
    bouton2Event
      .setOnPressed(() { });
    bouton3Event
      .setOnPressed(() { });
    bouton4Event
      .setOnPressed(() { });
    bouton5Event
      .setOnPressed(() {app5();});
    bouton6Event
      .setOnPressed(() { });
        
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[
            CustomHead(
              customTextButtomEvent: headEvent,
              customTextStyle: customHeadStyle),
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

  void app0(){
    Navigator.pop(context);
  }
  void app1(){
  }
  void app2(){
  }
  void app3(){
  }
  void app4(){
  }
  void app5(){
    Navigator.pushNamed(context,'/page_gestion_tarif');
  }
  void app6(){
  }


}