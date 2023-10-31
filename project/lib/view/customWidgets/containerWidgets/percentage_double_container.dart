import 'package:flutter/material.dart';


class PercentageDoubleContainer extends StatelessWidget{

  final Widget child1;
  final Widget child2;

  const PercentageDoubleContainer ({Key? key,
    required this.child1,
    required this.child2,
  }):super(key: key);
  
  
  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.fromLTRB(2,2,2,2 ),
            height: 100,
            child: child1,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(2,2,2,2 ),
            height: 100,
            child: child2,
          ),
        ),
      ],
    );
  }
} 