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
    return const Scaffold(
      body: EnglobeWidgets(
       child: ResponsiveView(
        children: [
          ComposentArray(
              height: 500,
              width: 100,
              matrice: 
              [
                ["1","2","3","4","5"],
                ["1","2","3","4","5"],
                ["1","2","3","4","5"],
                ["1","2","3","4","5"],
              ])
          ],
        
      ))
    );
  }








}