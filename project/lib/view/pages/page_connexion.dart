import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_container.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});
  @override
  State<PageConnexion> createState() => _PageConnexion();
}

class _PageConnexion extends State<PageConnexion> {
  
  
  final _formKey = GlobalKey<FormState>();

  final CustomContainerStyle customContainerStyle = CustomContainerStyle();
  final CustomContainerStyle customContainerStyle2 = StyleFactory.createCustomContainerStyleSpace();

  final CustomTextStyle customTextStyle = CustomTextStyle();
  final CustomTextStyle customTextStyle2 = CustomTextStyle();


  final CustomTextButtomStyle customTextButtomStyle = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent customTextButtomEvent = CustomTextButtomEvent();

  final CustomTextFormFieldStyle customTextFormFieldStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator customTextFormFieldValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldStyle customTextFormFieldStyle2 = StyleFactory.createCustomTextFormFieldStyleSecret();
  final CustomTextFormFieldValidator customTextFormFieldValidator2 = CustomTextFormFieldValidator();

  final CustomTextFormFieldEvent customTextFormFieldEvent1 = CustomTextFormFieldEvent();
  final CustomTextFormFieldEvent customTextFormFieldEvent2 = CustomTextFormFieldEvent();

  final CustomTextFormFieldContent customTextFormFieldContent1 = CustomTextFormFieldContent();
  final CustomTextFormFieldContent customTextFormFieldContent2 = CustomTextFormFieldContent();


  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  void initState() {
    super.initState();

    customTextButtomEvent
      .setOnPressed((){tdest();});

    customTextStyle
      .setContent("Connexion au compte")
      .setColor(Colors.black)
      .setFontSize(30);

    customTextStyle2
      .setContent("Valider")
      .setColor(Colors.black)
      .setFontSize(30);

    customTextFormFieldStyle
      .setLabelText("Entrez votre identifiant");

    customTextFormFieldStyle2
      .setLabelText("Mot de passe")
      .setIconIsVisible(true)
      .setIcon(const Icon(Icons.visibility_off));

    customTextFormFieldValidator
      .setIsInteger(true)
      .setMinLength(4, true);

    customTextButtomStyle
      .setCustomTextStyle(customTextStyle2);

    customTextFormFieldEvent2
      .setOnChanged(() {setState((){});})
      .setOnClickButtom((){
        if(customTextFormFieldStyle2.getObscureText()==true){
          customTextFormFieldStyle2
            .setObscureText(false)
            .setIcon(const Icon(Icons.visibility));}
        else{
          customTextFormFieldStyle2
            .setObscureText(true)
            .setIcon(const Icon(Icons.visibility_off));}
        setState((){});
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[
            CustomContainer(
              customContainerStyle: customContainerStyle2),
            Center(
              child: CustomText(
                customTextStyle:customTextStyle)),
            CustomContainer(
              customContainerStyle: customContainerStyle2),
            CustomTextFormField(
              controller: controller1,
              customTextFormFieldStyle: customTextFormFieldStyle,
              customTextFormFieldEvent: customTextFormFieldEvent1,
              customTextFormFieldContent: customTextFormFieldContent1,
              customTextFormFieldValidator: customTextFormFieldValidator),
            CustomContainer(
              customContainerStyle: customContainerStyle2),
            CustomTextFormField(
              controller: controller2,
              customTextFormFieldStyle: customTextFormFieldStyle2,
              customTextFormFieldEvent: customTextFormFieldEvent2,
              customTextFormFieldContent: customTextFormFieldContent2 ,
              customTextFormFieldValidator: customTextFormFieldValidator2),
            CustomContainer(
              customContainerStyle: customContainerStyle2),
            CustomTextButton(
              customTextButtomStyle: customTextButtomStyle,                
              customTextButtomEvent: customTextButtomEvent,),
          ],
        ),
      ),
    );
  }

  void tdest() async {
    if (_formKey.currentState!.validate()){     
      _onLoading();
      bool b = await commWithServ();
      if(b){
         Navigator.popAndPushNamed(context, "/pageNavigationApplication");
      }else{
        Navigator.popAndPushNamed(context, "/pageNavigationApplication");
      }
    }
  }

  Future<bool> commWithServ()async{

    Map<String, dynamic> content = {"id":controller1.text, "mdp":controller2.text};

    String url = 'http://127.0.0.1:8000/testConn';
    try{
      http.Response response = await http.post(Uri.parse(url), body: utf8.encode(jsonEncode(content)));
      if (response.statusCode == 200) {
        return (jsonDecode(response.body)['bool']);
      }else{
        throw Exception('Failed to create album.');
      }
    }
    catch(e)
    {
      return false;
    }
  }


  void _onLoading() {
  //Affichage de la modale
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Dialog(
        child:  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             CircularProgressIndicator(),
             Text("Chargement"),
          ],
        ),
      );
    },
  );
//Après 3 secondes, on effectue la connexion
   Future.delayed(new Duration(seconds: 3), () {
    //Navigator.pop(context); //pop dialog
  });}

}