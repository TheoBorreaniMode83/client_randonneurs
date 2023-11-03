import 'package:flutter/material.dart';
import 'package:patterns_canvas/patterns_canvas.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/tailorMadeWidgets/composent_requete_multi_criteres_style.dart';

class ComposentRequeteMultiCriteres extends StatelessWidget{

  final Widget child;
  final List<Widget> children1;
  final List<Widget> children2;
  final ComposentRequeteMultiCriteresStyle composentRequeteMultiCriteresStyle;

  List<Widget> makeBody1(){
    List<Widget> newChildren = [];
    for (int i = 0;i<children1.length;i++){
      newChildren.add(
        Expanded(
          flex:1,
          child:Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:composentRequeteMultiCriteresStyle.getBackgroundColor(),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: composentRequeteMultiCriteresStyle.getBorderColor(),
                    width: 1,),
                ),
                
                padding: const EdgeInsets.all(3) ,
                margin: const EdgeInsets.fromLTRB(10,10,0,10),
                child: children1[i])]
          )));
    }
    return newChildren;
  }

  List<Widget> makeBody2(){
    List<Widget> newChildren = [];
    for (int i = 0;i<children2.length;i++){
      newChildren.add(
        Expanded(
          flex:1,
          child: Container(
            decoration: BoxDecoration(
                  color:composentRequeteMultiCriteresStyle.getBackgroundColor(),
                  border: Border.all(
                    color: composentRequeteMultiCriteresStyle.getBorderColor(),
                    width: 1,),
                ),
            margin: const EdgeInsets.fromLTRB(10,0,10,10),
            child: children2[i])));
    }
    return newChildren;
  }

  const ComposentRequeteMultiCriteres ({Key? key,
    required this.child,
    required this.children1,
    required this.children2,
    required this.composentRequeteMultiCriteresStyle,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        children: [
          Expanded(
            flex:1 ,
            child: SizedBox(
              child: Container(padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),alignment: Alignment.topRight, child: child),
            )
          ),
          Expanded(
            flex:3 ,
            child:CustomPaint(
            painter: ContainerPatternPainter(color1:composentRequeteMultiCriteresStyle.getBackgroundColor(),color2: composentRequeteMultiCriteresStyle.getBorderColor()),
            child:  Container(
               decoration: BoxDecoration(
                  border: Border.all(
                    color: composentRequeteMultiCriteresStyle.getBorderColor(),
                    width: 1,),
                ),
              child: Column(
                children: [
                  Row(
                    children: makeBody1(),
                  ),
                  Row(
                    children: makeBody2(),
                  ),
                ],
              )
            )
          )),
        ]
      ),
    );
  }
} 

class ContainerPatternPainter extends CustomPainter {

  Color color1;
  Color color2;


  ContainerPatternPainter({required this.color1,required this.color2});

  @override
  void paint(Canvas canvas, Size size) {
    TexturePattern(bgColor: color1, fgColor: color2, featuresCount: 100).paintOnWidget(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}