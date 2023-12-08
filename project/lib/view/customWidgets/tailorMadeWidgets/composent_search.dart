
import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/gstHttpServer/gst_http_server.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';


class ComposentSearch extends StatefulWidget {
    const ComposentSearch ({Key? key});

  @override
  State<ComposentSearch> createState() => _ComposentSearchState();
}

class _ComposentSearchState extends State<ComposentSearch> {

  CustomDropdownButtonEvent customDropdownButtonEvent = CustomDropdownButtonEvent();
  CustomDropdownButtonStyle customDropdownButtonStyle = CustomDropdownButtonStyle();
  CustomDropdownButtonContent customDropdownButtonContent = CustomDropdownButtonContent();
  late CustomDropdownButtonContent a;

  CustomTextFormFieldStyle customTextFormFieldStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  CustomTextFormFieldValidator customTextFormFieldValidator = CustomTextFormFieldValidator();
  CustomTextFormFieldEvent customTextFormFieldEvent = CustomTextFormFieldEvent();
  CustomTextFormFieldContent customTextFormFieldContent = CustomTextFormFieldContent();
  final controller = TextEditingController();

  bool switchVar = true;




  @override
  void initState() {
    a = customDropdownButtonContent;

    customDropdownButtonEvent
      .setOnChanged((String? p0) {
        customDropdownButtonContent.setDropdownValue(p0!);
      });
    customDropdownButtonStyle
      .setColor(Colors.white);
    customTextFormFieldStyle
      .setFillColor(Colors.white)
      .setFilled(true);
    customDropdownButtonContent
      .setItems(['>'])
      .setDropdownValue('>');
    super.initState();
  }

  Widget rowType1({required name,required List<String> tab1 ,required List<String> tab2}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex:4,
            child: Text(name),),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab1[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab1.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab2[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab2.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
        ]
      )
    );
  }

  Widget rowType2({required name,required List<String> tab1}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex:4,
            child: Text(name),),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab1[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab1.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
          Expanded(
            flex:4,
            child: Container(                   
              color: Colors.white,
              child: TextField()
            ),
          ),
        ]
      )
    );
  }

  Widget rowType3({required name,required List<String> tab1, required List<String> tab2,required List<String> tab3}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex:4,
            child: Text(name),),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab1[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab1.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab2[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab2.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              color: Colors.white,
              child: DropdownButton<String>(
                isExpanded: true,
                value: tab3[0],
                onChanged:(value) => {},
                alignment: Alignment.center,
                items: tab3.map((value) => DropdownMenuItem(
                  child:  Center( 
                    child: Text(value), 
                  ),
                  value: value,
                )).toList(),
                icon: Container(
                  height: double.maxFinite,
                  width: 30,
                  color:Colors.amber,
                  child: const Icon(Icons.arrow_downward),
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,)
              )
            )
          ),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return  GestureDetector(
      onTap: (){
        setState(() {switchVar = !switchVar;});},
      child:Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.red,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2),),
              width: double.maxFinite,
              child: Row(
                children: [
                  const Text("Requête multi critères"),
                  Expanded(
                    flex: 1,
                    child: Container( 
                      alignment: Alignment.centerRight, 
                      child: const Icon(Icons.south,),),),           
                ],
              ),
            ),
            if(switchVar == false) ...[
              Container(
                padding: const EdgeInsets.all(20),
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 255, 144, 144),
                  border: Border(
                    left: BorderSide( 
                      color: Colors.black,
                      width: 2,),
                    right: BorderSide( 
                      color: Colors.black,
                      width: 2,),
                    bottom: BorderSide(                  
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    rowType1(name: "Année de première adhésion", tab1:['=','>','<','≠'] , tab2: ['vide']+GstHttpServer.getListAnneesPremiereAdhesion()),
                    rowType1(name: "Civilité", tab1:['=','≠'] , tab2: ['vide','b','c']),
                    rowType1(name: "Statut", tab1:['=','≠'] , tab2: ['vide']+GstHttpServer.getListStatuts()),
                    rowType1(name: "Ville", tab1:['=','≠'] , tab2: ['vide']+GstHttpServer.getVille()),
                    rowType2(name: "Date de naissance", tab1:['=','≠','>','<']),
                    rowType3(name: "Rubrique financières", tab1:['=','≠','>','<'],tab2: ['vide','a','b'],tab3: ['vide','a','b','c']),
                  ]
                ),
              ),
            ],    
          ],
        ),
      ),
    );
  }
} 


