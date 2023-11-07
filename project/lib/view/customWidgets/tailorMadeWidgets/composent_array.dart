import 'package:flutter/material.dart';



class ComposentArray extends StatelessWidget{

  final List<List<String>> matrice;
  final double? height;
  final double? width;

  const ComposentArray ({Key? key,
    required this.matrice,
    this.height,
    this.width,
  }):super(key: key);

  List<Widget> _makeArray(){
    List<Widget> listI = [];
    List<Widget> listII = [];
    BorderSide borderSideL=const BorderSide();
    BorderSide borderSideR=const BorderSide();
    BorderSide borderSideT=const BorderSide();
    BorderSide borderSideB=const BorderSide();
    Color color = const Color.fromARGB(255, 202, 202, 202);
    for (int i=0 ; i<matrice.length ; i++){
      listI.add(Row(children:listII));
      listII = [];
      for (int ii=0 ; ii<matrice[i].length ; ii++){
        //Si dessous calcul des bordures
        borderSideL=const BorderSide(width: 1,color: Colors.black,);
        if(ii==matrice[i].length-1){borderSideR=const BorderSide(width: 1,color: Colors.black);}else{borderSideR=const BorderSide(width: 0,color: Colors.transparent);};
        borderSideT=const BorderSide(width: 1,color: Colors.black);
        if(i==matrice.length-2){borderSideB=const BorderSide(width: 1,color: Colors.black);}else{borderSideB=const BorderSide(width: 0,color: Colors.transparent);};
        //si dessous calcul des couleurs
        if(i==0){color = Colors.red;}
        //si dessous calcul des angles

        else{color = const Color.fromARGB(255, 202, 202, 202);}

        listII.add(
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: color,
                border: Border(
                  left: borderSideL,
                  right: borderSideR,
                  top: borderSideT,
                  bottom: borderSideB,
                  ),
              ),
                child:Text(
                  matrice[i][ii])
              )
              ));
      }
    }
    return listI;
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 202, 202, 202),
      ),
      height: height,
      width: width,
      child: Column(children: _makeArray(),)
    );
  }
} 