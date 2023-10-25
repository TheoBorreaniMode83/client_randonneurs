import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';

class PageGestionAdherent extends StatefulWidget {
  const PageGestionAdherent({super.key});
  @override
  State<PageGestionAdherent> createState() => _PageGestionAdherent();
}

class _PageGestionAdherent extends State<PageGestionAdherent> {
  
  
    final _formKey = GlobalKey<FormState>();
    
    final CustomTextStyle customTextTextStyleTitle = StyleFactory.createCustomTextStyleTitle();
    final CustomTextStyle customTextTextStyle1 = CustomTextStyle();
    final CustomTextStyle customTextTextStyle2 = CustomTextStyle();
    final CustomTextStyle customTextTextStyle3 = CustomTextStyle();

    final CustomTextButtomStyle customButtonAjouterStyle = StyleFactory.createCustomTextButtomStyleBasic();
    final CustomTextButtomStyle customButtonModifierStyle = StyleFactory.createCustomTextButtomStyleBasic();
    final CustomTextButtomStyle customButtonSupprimerStyle = StyleFactory.createCustomTextButtomStyleBasic();
    
    final CustomTextButtomEvent customButtonHeadEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonAjouterEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonModifierEvent = CustomTextButtomEvent();
    final CustomTextButtomEvent customButtonSupprimerEvent = CustomTextButtomEvent();

    @override
    void initState() {
      super.initState();

      customTextTextStyleTitle
        .setContent("Gestion des adhèrents");
      customTextTextStyle1
        .setContent("Ajouter");
      customTextTextStyle2
        .setContent("Modifier");
      customTextTextStyle3
        .setContent("Supprimer");

      customButtonAjouterStyle
        .setCustomTextStyle(customTextTextStyle1);
      customButtonModifierStyle
        .setCustomTextStyle(customTextTextStyle2);
      customButtonSupprimerStyle
        .setCustomTextStyle(customTextTextStyle3);

      customButtonHeadEvent
        .setOnPressed(() {Navigator.pop(context);});
      customButtonAjouterEvent
        .setOnPressed(() {Navigator.pushNamed(context, "/pageAjouterAdherent");});
    }

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
            ],
          ),
        ),
      );
    }
  }
