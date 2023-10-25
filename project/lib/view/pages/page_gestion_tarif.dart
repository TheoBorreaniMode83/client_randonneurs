import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';


import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';



import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';



import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';

class PageGestionTarif extends StatefulWidget {
  const PageGestionTarif({super.key});
  @override
  State<PageGestionTarif> createState() => _PageGestionTarif();
}

class _PageGestionTarif extends State<PageGestionTarif> {
  


  
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
        .setContent("Gestion des tarifs");

      customButtonHeadEvent
        .setOnPressed((){Navigator.pop(context);});
 
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
            ],
          ),
        ),
      );
    }
  }
