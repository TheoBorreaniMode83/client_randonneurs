import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';

class CustomDropdownButton extends StatelessWidget{

  final CustomDropdownButtonStyle customDropdownButtonStyle;
  final CustomDropdownButtonContent customDropdownButtonContent;
  final CustomDropdownButtonEvent customDropdownButtonEvent;

  const CustomDropdownButton ({Key? key,
    required this.customDropdownButtonStyle,
    required this.customDropdownButtonContent,
    required this.customDropdownButtonEvent,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2)
      ),
      width: 100,
      height: 100,
      child: DropdownButton(
        isExpanded: true,
        value: customDropdownButtonContent.getDropDownValue(),
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const SizedBox(),
        items: customDropdownButtonContent.getItems().map((items) {
          return DropdownMenuItem(value: items, child: Text(items), );
        }).toList(),
      onChanged: customDropdownButtonEvent.getOnChanged()
    ));
  }
} 