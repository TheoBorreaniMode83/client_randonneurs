
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

import 'package:les_randonneurs_draceniens_client_administratif/model/wrapper.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/controller_page_gestion_adherents.dart';

class ComposentSearch extends StatefulWidget {

  Function function;

  ComposentSearch ({
    required this.function,

    Key? key
  });

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

  Widget rowType1({required name,required List<String> tab1 ,required List<String> tab2, required Wrapper elt1, required Wrapper elt2}){


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
                value: elt1.content,
                onChanged:(value) =>  {
                  setState(() {
                    elt1.content = value!;
                    widget.function();
                  })
                  },
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
                style: const TextStyle(color: Color.fromARGB(255, 93, 0, 255)),
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
                value: elt2.content,
                onChanged:(value) =>  {
                  setState(() {
                    elt2.content = value!;
                    widget.function();
                    })},
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

  Widget rowType2({required name,required List<String> tab1, required Wrapper x, required TextEditingController controlleurX}){
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
                value: x.content,
                onChanged:(value) {
                  setState(() {
                  x.content = value!;
                  });
                  widget.function();
                  },
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
              child: TextField(
                onChanged: (value){
                  setState(() {});
                  widget.function();
                } ,
                controller: controlleurX,
              )
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
                onChanged:(value) {
                  
                },
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

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.red,
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {switchVar = !switchVar;});},
              child:Container(
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
              )
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
                    rowType1(
                      name: "Civilité", tab1:['=','≠'] ,
                      tab2: ['vide']+GstHttpServer.getCivilite(),
                      elt1: ControllerPageGestionAdherents.value1_1,
                      elt2: ControllerPageGestionAdherents.value1_2
                    ),
                    rowType1(
                      name: "Statut",
                      tab1: ['=','≠'] ,
                      tab2: ['vide']+GstHttpServer.getListStatuts(),
                      elt1: ControllerPageGestionAdherents.value2_1,
                      elt2: ControllerPageGestionAdherents.value2_2
                    ),
                    rowType1(
                      name: "Ville",
                      tab1: ['=','≠'],
                      tab2: ['vide']+GstHttpServer.getVille(),
                      elt1: ControllerPageGestionAdherents.value3_1,
                      elt2: ControllerPageGestionAdherents.value3_2
                    ),
                    rowType2(
                      name: "Date de naissance",
                      tab1:['=','≠','>','<'],
                      x: ControllerPageGestionAdherents.value4,
                      controlleurX: ControllerPageGestionAdherents.controlleur1
                    ),
                    rowType2(
                      name: "Nombre d'années consécutifs",
                      tab1:['=','≠','>','<'],
                      x: ControllerPageGestionAdherents.value5,
                      controlleurX: ControllerPageGestionAdherents.controlleur2
                    ),
                    rowType2(
                      name: "Année de première adhésion",
                      tab1: ['=','>','<','≠'] ,
                      x: ControllerPageGestionAdherents.value6,
                      controlleurX: ControllerPageGestionAdherents.controlleur3
                    ),
                ]
              ),
            ),
          ],    
        ],
      ),
    );
  }
} 


