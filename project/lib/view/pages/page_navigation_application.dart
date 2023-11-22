import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_container.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';

import 'package:les_randonneurs_draceniens_client_administratif/controller/gstRoute/gst_route.dart';


import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';


import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';


class PageNavigationApplication extends StatefulWidget {
  const PageNavigationApplication({super.key});
  @override
  State<PageNavigationApplication> createState() => _PageNavigationApplication();
}

class _PageNavigationApplication extends State<PageNavigationApplication> {
  


  //Déclaration des arguments customContainer
  final CustomContainerStyle customContainerStyle = CustomContainerStyle();
  final CustomContainerStyle customContainerStyle2 = StyleFactory.createCustomContainerStyleSpace();

  //Déclaration des arguments customText
  final CustomTextStyle title = StyleFactory.createCustomTextStyleTitle();
  final CustomTextStyle buttonApp1 = CustomTextStyle();
  final CustomTextStyle buttonApp2 = CustomTextStyle();
  final CustomTextStyle buttonApp3 = CustomTextStyle();
  final CustomTextStyle buttonApp4 = CustomTextStyle();


  //Déclaration des arguments customTextButtom
  final CustomTextButtomStyle textButtomApp1Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp1Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp2Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp2Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp3Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp3Event = CustomTextButtomEvent();

  final CustomTextButtomStyle textButtomApp4Style = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomApp4Event = CustomTextButtomEvent();

  @override
  void initState() {
    super.initState();

    //Setting des arguments customText
    title
      .setContent("Accueil");
    buttonApp1
      .setContent("Gestion adhérents");
    buttonApp2
      .setContent("Gestion des randonnées");
    buttonApp3
      .setContent("Evènementiel");
    buttonApp4
      .setContent("Messagerie");

    buttonApp1.setColor(Colors.black);
    buttonApp2.setColor(Colors.black);
    buttonApp3.setColor(Colors.black);
    buttonApp4.setColor(Colors.black);

    //Setting des arguments customTextButtom
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

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ResponsiveView(
        children:[
          CustomContainer(
            customContainerStyle: customContainerStyle2),
          Center(
            child: CustomText(
            customTextStyle:title)),
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
        ],
      ),
    );
  }

  void app1(){
    GstRoute.goToRoute(context, GstRoute.goToAdherentsEligibles);
  }
  void app2(){
  }
  void app3(){
  }
  void app4(){
  }

}