import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';

class PageGestionnaireRandonneurs extends StatefulWidget {
  const PageGestionnaireRandonneurs({super.key});
  @override
  State<PageGestionnaireRandonneurs> createState() => _PageGestionnaireRandonneurs();

  
}

class _PageGestionnaireRandonneurs extends State<PageGestionnaireRandonneurs> {

   final CustomTextStyle customTextTextStyleTitle = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle1 = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle2 = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle3 = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle4 = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle5 = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle6 = StyleFactory.createCustomTextStyleTitle();

    final CustomTextButtomStyle customButtonAjouterStyle = CustomTextButtomStyle();
    final CustomTextButtomStyle customButtonModifierStyle = CustomTextButtomStyle();
    final CustomTextButtomStyle customButtonSupprimerStyle = CustomTextButtomStyle();
    
    final CustomTextButtomEvent customButtonHeadEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonAjouterEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonModifierEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonSupprimerEvent = CustomTextButtomEvent();

  @override
    void initState(){
      super.initState();

      customTextTextStyleTitle
        .setContent("Gestion des adhèrents");
      customTextTextStyle1
        .setContent("Ajouter");
      customTextTextStyle2
        .setContent("Modifier");
      customTextTextStyle3
        .setContent("Supprimer");
      customTextTextStyle4
        .setContent("Ajouter");
      customTextTextStyle5
        .setContent("Modifier");
      customTextTextStyle6
        .setContent("Supprimer");

      customButtonAjouterStyle
        .setCustomTextStyle(customTextTextStyle1);
      customButtonModifierStyle
        .setCustomTextStyle(customTextTextStyle2);
      customButtonSupprimerStyle
        .setCustomTextStyle(customTextTextStyle3);
    }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[
            CustomHead(
              customTextButtomEvent: customButtonHeadEvent,
              customTextStyle: customTextTextStyleTitle),
            CustomTextButton(
              customTextButtomStyle: customButtonAjouterStyle,
              customTextButtomEvent: customButtonAjouterEvent),
            CustomTextButton(
              customTextButtomStyle: customButtonModifierStyle,
              customTextButtomEvent: customButtonModifierEvent),
            CustomTextButton(
              customTextButtomStyle: customButtonSupprimerStyle,
              customTextButtomEvent: customButtonSupprimerEvent),
            CustomTextButton(
              customTextButtomStyle: customButtonAjouterStyle,
              customTextButtomEvent: customButtonAjouterEvent),
            CustomTextButton(
              customTextButtomStyle: customButtonModifierStyle,
              customTextButtomEvent: customButtonModifierEvent),
            CustomTextButton(
              customTextButtomStyle: customButtonSupprimerStyle,
              customTextButtomEvent: customButtonSupprimerEvent),
          ],
        ),
      ),
    );
  }
}