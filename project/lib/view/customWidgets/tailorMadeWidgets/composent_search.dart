import 'package:flutter/material.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_content.dart';

import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';


class ComposentSearch extends StatelessWidget{

  CustomDropdownButtonEvent customDropdownButtonEvent = CustomDropdownButtonEvent();
  CustomDropdownButtonStyle customDropdownButtonStyle = CustomDropdownButtonStyle();
  CustomDropdownButtonContent customDropdownButtonContent = CustomDropdownButtonContent();
  late CustomDropdownButtonContent a;

  CustomTextFormFieldStyle customTextFormFieldStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  CustomTextFormFieldValidator customTextFormFieldValidator = CustomTextFormFieldValidator();
  CustomTextFormFieldEvent customTextFormFieldEvent = CustomTextFormFieldEvent();
  CustomTextFormFieldContent customTextFormFieldContent = CustomTextFormFieldContent();
  final controller = TextEditingController();




  ComposentSearch ({Key? key}){
    
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
  }



  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2
              ),
            ),
            child: Row(
              children: [
                Text("Requête multi critères"),
                Expanded(
                  flex: 1,
                  child: Container( 
                    alignment: Alignment.centerRight, 
                    child:Icon(Icons.south,),
                  ),
                )
              ],
            )
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration:const BoxDecoration(
              color: const Color.fromARGB(255, 255, 144, 144),
              border: Border(
                left: BorderSide( 
                  color: Colors.black,
                  width: 2,
                  ),
                right: BorderSide( 
                  color: Colors.black,
                  width: 2,
                  ),
                bottom: BorderSide(                  
                  color: Colors.black,
                  width: 2,
                  ),
                ),
              ),
            child: Column(
              children: [
                //-------------------------------------------------------------------------------------
                Row(
                  children: [
                    Expanded(
                      flex:4,
                      child: Text("Année de première adhésion : "),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: '<',
                          onChanged:(value) => {},
                          items: ['<','>','='].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          )))),
                    Expanded(
                      flex: 10,
                      child:Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        color: Colors.white,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },))))
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      flex:1,
                      child: Text("Année de première adhésion : "),
                    )
                  ],),
                Row(
                  children: [
                    Flexible(
                      flex:1,
                      child: Text("Année de première adhésion : "),
                    )
                  ],),
                //-----------------------------------------------------------------------
              ],
            )
          )
        ],
      )
    );
  }
} 

/*
Container(
                  margin: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      Expanded(
                        flex: 45,
                        child: Text("Année de première adhésion : ")),
                      Expanded(
                        flex: 10,
                        child: Container(
                          color: Colors.white,
                          child: DropdownButton<String>(
                            value: '<',
                            onChanged:(value) => {},
                            items: ['<','>','='].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ) 
                        )
                      )
                    ),
                  Expanded(
                    flex: 45,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        color: Colors.white,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        )
                      )
                    )
                  )
                ],
              ),
            ),
*/