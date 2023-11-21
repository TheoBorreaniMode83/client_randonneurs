import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/englobe_widgets.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';


class PageArchivage extends StatefulWidget {
  const PageArchivage({super.key});
  @override
  State<PageArchivage> createState() => _PageArchivage();
}

class _PageArchivage extends State<PageArchivage> {

  CustomTextButtomStyle customTextButtomStyle = StyleFactory.createCustomTextButtomStyleBasic();
  CustomTextButtomEvent customTextButtomEvent = CustomTextButtomEvent();
  CustomTextStyle customTextStyle = CustomTextStyle();
  

  @override
  void initState() {
    super.initState();

    customTextButtomStyle.setCustomTextStyle(customTextStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnglobeWidgets(
        child: ResponsiveView(
        children:[
          CustomTextButton(
            customTextButtomStyle: customTextButtomStyle, 
            customTextButtomEvent: customTextButtomEvent
            )
        ],
      ),)
    );
  }

}