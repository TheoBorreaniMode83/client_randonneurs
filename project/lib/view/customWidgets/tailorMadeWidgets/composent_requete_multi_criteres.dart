import 'package:flutter/material.dart';


class ComposentRequeteMultiCriteres extends StatelessWidget{

  final Widget child;
  final List<Widget> children1;
  final List<Widget> children2;


  List<Widget> makeBody1(){
    List<Widget> newChildren = [];
    for (int i = 0;i<children1.length;i++){
      newChildren.add(Expanded(flex:1,child: Container(margin: EdgeInsets.fromLTRB(10,10,0,10), child: children1[i])));
    }
    return newChildren;
  }

  List<Widget> makeBody2(){
    List<Widget> newChildren = [];
    for (int i = 0;i<children2.length;i++){
      newChildren.add(Expanded(flex:1,child: Container(margin: EdgeInsets.fromLTRB(10,0,10,10), child: children2[i])));
    }
    return newChildren;
  }

  const ComposentRequeteMultiCriteres ({Key? key,
    required this.child,
    required this.children1,
    required this.children2,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex:1 ,
            child: Container(
              child: child,
            )
          ),
          Expanded(
            flex:3 ,
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    child:Row(
                    children: makeBody1(),
                  ),),
                  Container(
                    child:Row(
                    children: makeBody2(),
                  ),),
                ],
              )
            )
          ),
        ]
      ),
    );
  }
} 