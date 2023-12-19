import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/englobe_widgets.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/composent_array.dart';

class PageTest extends StatefulWidget {
  const PageTest({super.key});
  @override
  State<PageTest> createState() => _PageGestionsAdhesionsEnCours();
}

class _PageGestionsAdhesionsEnCours extends State<PageTest> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          TextButton(
        onPressed: (){print("hello");},
        child: Text("Ai-je réussi ?"),
        style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 249, 19, 3), 
        
        )//Text("Hi world we work in a \"programmation\" project",style: TextStyle(color: Colors.red),)
    ),
    TextButton(
        onPressed: (){print("hello");},
        child: Text("Ai-je réussi ?"),
        style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(151, 58, 255, 134), 
        
        )//Text("Hi world we work in a \"programmation\" project",style: TextStyle(color: Colors.red),)
    )
        ],
      )

      );
  }








}