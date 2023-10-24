import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/responsiveWidgetsStyles/stable_rapport_style.dart';

class StableRapport extends StatelessWidget{

  final StableRapportStyle stableRapportStyle;
  final Widget child;

  const StableRapport ({Key? key,
    required this.stableRapportStyle,
    required this.child,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double maxHeight = constraints.maxHeight;
          double maxWidth = constraints.maxWidth;
          int ratioWidth = stableRapportStyle.getRatio().getFirst();
          int ratioHeight = stableRapportStyle.getRatio().getSecond();
          double height;
          double width;
          if(maxWidth*ratioHeight/ratioWidth<=maxHeight){
            height = maxWidth*ratioHeight/ratioWidth;
            width = maxWidth; 
          }
          else{
            height = maxHeight;
            width = maxHeight*ratioWidth/ratioHeight;
          }
          return Container(
            height: height,
            width: width,
            color: Colors.amber,
            child: child,
          );
        }
      ),
    );
  }
} 