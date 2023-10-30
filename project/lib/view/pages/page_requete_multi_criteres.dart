import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/composent_requete_multi_criteres.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/tailorMadeWidgets/composent_requete_multi_criteres_style.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';

import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';


class PageRequeteMultiCriteres extends StatefulWidget {
  const PageRequeteMultiCriteres({super.key});
  @override
  State<PageRequeteMultiCriteres> createState() => _PageGestionnaireRandonneurs();
}

class _PageGestionnaireRandonneurs extends State<PageRequeteMultiCriteres> {
  
  final _formKey = GlobalKey<FormState>();
  final CustomTextStyle customTextTextStyleTitle = StyleFactory.createCustomTextStyleTitle();
  final CustomTextButtomEvent customButtonHeadEvent = CustomTextButtomEvent();

  final CustomDropdownButtonStyle dropdownButtonCiviliteStyle = CustomDropdownButtonStyle();
  final CustomDropdownButtonContent dropdownButtonCiviliteContent = CustomDropdownButtonContent();
  final CustomDropdownButtonEvent dropdownButtonCiviliteEvent = CustomDropdownButtonEvent();

  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle1 = ComposentRequeteMultiCriteresStyle();
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle2 = ComposentRequeteMultiCriteresStyle();
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle3 = ComposentRequeteMultiCriteresStyle();
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle4 = ComposentRequeteMultiCriteresStyle();
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle5 = ComposentRequeteMultiCriteresStyle();
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle6 = ComposentRequeteMultiCriteresStyle();
  final CustomTextButtomStyle customTextButtomStyle = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent customTextButtomEvent = CustomTextButtomEvent();

  final CustomTextStyle customTextStyle = CustomTextStyle();

  @override
  void initState() {
    super.initState();
    customButtonHeadEvent 
      .setOnPressed(() {Navigator.pop(context);});
    customTextTextStyleTitle
      .setContent("Requete multi critere");

    composentRequeteMultiCriteresStyle1
      .setBackgroundColor(Color(0xFFFFC0FF))
      .setBorderColor(Color(0xFFD6809F));
    composentRequeteMultiCriteresStyle2
      .setBackgroundColor(Color(0xFFC0FFFF))
      .setBorderColor(Color(0xFF76C5E0));
    composentRequeteMultiCriteresStyle3
      .setBackgroundColor(Color(0xffc0ffc0))
      .setBorderColor(Color(0xFF95C19B));
    composentRequeteMultiCriteresStyle4
      .setBackgroundColor(Color(0xffffe0c0))
      .setBorderColor(Color(0xFFD79F7F));
    composentRequeteMultiCriteresStyle5
      .setBackgroundColor(Color(0xffffc0c0))
      .setBorderColor(Color(0xFFDA7F7C));
    composentRequeteMultiCriteresStyle6
      .setBackgroundColor(Color(0xffffffc0))
      .setBorderColor(Color(0xFFCCB68A));

    dropdownButtonCiviliteStyle
      .setColor(Colors.white);

    customTextStyle
      .setContent("valider");
    customTextButtomStyle
      .setCustomTextStyle(customTextStyle);
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
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle1,
              child: Text("Année première adhésion"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle2,
              child: Text("Civilité"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle3,
              child: Text("Statut"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle4,
              child: Text("Ville"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle5,
              child: Text("Date de naissance"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle6,
              child: Text("Rubrique financières"),
              children1: [Text("Etendue"),Text("Civilités")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
            ),
            CustomTextButton(customTextButtomStyle: customTextButtomStyle, customTextButtomEvent: customTextButtomEvent)
          ],
        ),
      ),
    );
  }
}
