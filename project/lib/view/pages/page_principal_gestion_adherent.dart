import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';

class PagePrincipalGestionAdherent extends StatefulWidget {
  const PagePrincipalGestionAdherent({super.key});
  @override
  State<PagePrincipalGestionAdherent> createState() => _PagePrincipalGestionAdherent();
}

class _PagePrincipalGestionAdherent extends State<PagePrincipalGestionAdherent> {
  

  final _formKey = GlobalKey<FormState>();

  //Déclaration des arguments customContainer
  final CustomContainerStyle customContainerStyle = CustomContainerStyle();
  final CustomContainerStyle customContainerStyle2 = StyleFactory.createCustomContainerStyleSpace();

  //Déclaration des arguments customText
  final CustomTextStyle title = StyleFactory.createCustomTextStyleTitle();
  final CustomTextStyle buttonApp1 = CustomTextStyle();
  final CustomTextStyle buttonApp2 = CustomTextStyle();
  final CustomTextStyle buttonApp3 = CustomTextStyle();
  final CustomTextStyle buttonApp4 = CustomTextStyle();
  final CustomTextStyle buttonApp5 = CustomTextStyle();
  final CustomTextStyle buttonApp6 = CustomTextStyle();


  //Déclaration des arguments customTextButtom
  final CustomTextButtomEvent textButtomApp0Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp1Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp1Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp2Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp2Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp3Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp3Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp4Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp4Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp5Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp5Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp6Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp6Event = CustomTextButtomEvent();

  @override
  void initState() {
    super.initState();

    //Setting des arguments customText
    title
      .setContent("Les randonneurs dracéniens");
    buttonApp1
      .setContent("Gestion Adhésions en cours");
    buttonApp2
      .setContent("Etats statistiques");
    buttonApp3
      .setContent("Requête à critères multiples");
    buttonApp4
      .setContent("Transfert des Adhésions non renouvelées A-1");
    buttonApp5
      .setContent("Recherche des adhérents éligibles");
    buttonApp6
      .setContent("Gestion: Tarifs, paramètres, Cert. Médicau, Nlle saison");



    //Setting des arguments customTextButtom
    textButtomApp0Event
      .setOnPressed((){app0();});

    textButtomApp1Style
      .setCustomTextStyle(buttonApp1);
    textButtomApp1Event
      .setOnPressed((){app1();});
    textButtomApp2Style
      .setCustomTextStyle(buttonApp2);
    textButtomApp2Event
      .setOnPressed((){app2();});
    textButtomApp3Style
      .setCustomTextStyle(buttonApp3);
    textButtomApp3Event
      .setOnPressed((){app3();});
    textButtomApp4Style
      .setCustomTextStyle(buttonApp4);
    textButtomApp4Event
      .setOnPressed((){app4();});
    textButtomApp5Style
      .setCustomTextStyle(buttonApp5);
    textButtomApp5Event
      .setOnPressed((){app5();});
    textButtomApp6Style
      .setCustomTextStyle(buttonApp6);
    textButtomApp6Event
      .setOnPressed((){app6();});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ResponsiveView(
        children:[
          CustomHead(
            customTextStyle: title, 
            customTextButtomEvent:textButtomApp0Event,),
          CustomTextButton(
            customTextButtomStyle: textButtomApp1Style,
            customTextButtomEvent: textButtomApp1Event),
          CustomTextButton(
            customTextButtomStyle: textButtomApp2Style,
            customTextButtomEvent: textButtomApp2Event),
          CustomTextButton(
            customTextButtomStyle: textButtomApp3Style,
            customTextButtomEvent: textButtomApp3Event),
          CustomTextButton(
            customTextButtomStyle: textButtomApp4Style,
            customTextButtomEvent: textButtomApp4Event),
          CustomTextButton(
            customTextButtomStyle: textButtomApp5Style,
            customTextButtomEvent: textButtomApp5Event),
          CustomTextButton(
            customTextButtomStyle: textButtomApp6Style,
            customTextButtomEvent: textButtomApp6Event),
        ],
      ),
    );
  }

  void app0(){
    Navigator.pop(context);
  }
  void app1(){
    Navigator.pushNamed(context, "/page_gestion_adherent");
  }
  void app2(){
    print("hello world");    
  }
  void app3(){
    print("hello world");    
  }
  void app4(){
    print("hello world");    
  }
  void app5(){
    print("hello world");    
  }
  void app6(){
    Navigator.pushNamed(context, '/page_boite_a_outils');    
  }


}