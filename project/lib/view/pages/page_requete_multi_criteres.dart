import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/composent_requete_multi_criteres.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';

import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';


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

  @override
  void initState() {
    super.initState();
    customButtonHeadEvent 
      .setOnPressed(() {Navigator.pop(context);});
    customTextTextStyleTitle
      .setContent("Requete multi critere");
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
          ],
        ),
      ),
    );
  }
}
