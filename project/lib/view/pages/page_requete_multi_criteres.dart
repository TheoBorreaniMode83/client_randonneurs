import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/tailorMadeWidgets/composent_requete_multi_criteres_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/englobe_widgets.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/composent_requete_multi_criteres.dart';
import 'package:les_randonneurs_draceniens_client_administratif/assets/text_content.dart';


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

  final CustomDropdownButtonStyle customDropdownButtonStyle = CustomDropdownButtonStyle();
  final CustomDropdownButtonEvent customDropdownButtonEvent = CustomDropdownButtonEvent();
  final CustomDropdownButtonContent customDropdownButtonContent = CustomDropdownButtonContent();
  
  

  @override
  void initState() {
    super.initState();
    customButtonHeadEvent 
      .setOnPressed(() {Navigator.pop(context);});
    customTextTextStyleTitle
      .setContent(TextContent.titleRequeteMultiCriteres);

    composentRequeteMultiCriteresStyle1
      .setBackgroundColor(const Color(0xFFFFC0FF))
      .setBorderColor(const Color(0xFFD6809F));
    composentRequeteMultiCriteresStyle2
      .setBackgroundColor(const Color(0xFFC0FFFF))
      .setBorderColor(const Color(0xFF76C5E0));
    composentRequeteMultiCriteresStyle3
      .setBackgroundColor(const Color(0xffc0ffc0))
      .setBorderColor(const Color(0xFF95C19B));
    composentRequeteMultiCriteresStyle4
      .setBackgroundColor(const Color(0xffffe0c0))
      .setBorderColor(const Color(0xFFD79F7F));
    composentRequeteMultiCriteresStyle5
      .setBackgroundColor(const Color(0xffffc0c0))
      .setBorderColor(const Color(0xFFDA7F7C));
    composentRequeteMultiCriteresStyle6
      .setBackgroundColor(const Color(0xffffffc0))
      .setBorderColor(const Color(0xFFCCB68A));

    dropdownButtonCiviliteContent
      .setItems(["a","b","c"])
      .setDropdownValue("a");

    dropdownButtonCiviliteStyle
      .setColor(Colors.white);

    dropdownButtonCiviliteEvent
      .setOnChanged((p0) {
        dropdownButtonCiviliteContent.setDropdownValue(p0.toString());
        setState(() {});
      });

    customTextStyle
      .setContent("valider");
    customTextButtomStyle
      .setCustomTextStyle(customTextStyle);


    }
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: EnglobeWidgets(
      child: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[
            Center(
              child: CustomText(
                customTextStyle: customTextTextStyleTitle),),
            Container(height: 30, ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle1,
              children1: const [Text("Egale à :")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
              ],
              child: const  Text("Année première adhésion", 
                style:  TextStyle(fontWeight: FontWeight.bold)),
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle2,
              children1: const [Text("Etendue"),Text("Civilités")],
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
              child: const Text("Civilité", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle3,
              children1: const [Text("Etendue"),Text("Status")],
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
              child: const Text("Statut",  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle4,
              children1: const [Text("Etendue"),Text("Villes")],
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
              child: const Text("Ville", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle5,
              children1: const [Text("Etendue"),Text("Date")],
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
              child: const Text("Date de naissance",  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ComposentRequeteMultiCriteres(
              composentRequeteMultiCriteresStyle: composentRequeteMultiCriteresStyle6,
              children1: const [Text("Rubriques"),Text("Etendue"),Text("Montant")],
              children2: [
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                CustomDropdownButton(
                  customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                  customDropdownButtonContent:dropdownButtonCiviliteContent,
                  customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
             
              ],
              child: const Text("Rubrique financières", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CustomTextButton(customTextButtomStyle: customTextButtomStyle, customTextButtomEvent: customTextButtomEvent)
          ],
        ),
      ),
    ));
  }
}
