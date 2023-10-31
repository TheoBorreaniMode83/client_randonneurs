import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/utility.dart';

class ResponsiveView extends StatelessWidget{

  final List<Widget> children;

  const ResponsiveView ({Key? key,
    required this.children,
  }):super(key: key);
  
  
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          String appareil = Utility.calcSizeAppareil(context);
          double height = constraints.maxHeight;
          double width;
          EdgeInsets padding;
          if(appareil=="isMobil"){
            width=constraints.maxWidth*1;
            padding= EdgeInsets.fromLTRB(constraints.maxWidth*0.1, 0, constraints.maxWidth*0.1, 0);
          }
          else if(appareil=="isTablet"){
            width=constraints.maxWidth*0.9;
            padding= EdgeInsets.fromLTRB(constraints.maxWidth*0.1, 0, constraints.maxWidth*0.1, 0);
          }
          else if(appareil=="isComputer"){
            width=constraints.maxWidth*0.7;
            padding= EdgeInsets.fromLTRB(constraints.maxWidth*0.1, 0, constraints.maxWidth*0.1, 0);
          }
          else{
            throw "Error";
          }
          return Container( 
            width: double.maxFinite,
            color: Colors.white,
            child : Container(
            margin: padding,
            padding: EdgeInsets.all(10),
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.amber,
              border: Border(
                left: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0)
                  ),
                right: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0)
                  ),
              ),
            ),
            child: Scrollbar(
              child: ListView(
                children: children
              ),
            ),
          ));
        }
      ),
    );
  }
} 