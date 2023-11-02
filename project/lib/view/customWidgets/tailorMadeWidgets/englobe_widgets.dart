import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class EnglobeWidgets extends StatelessWidget{

  final Widget child;

  const EnglobeWidgets ({Key? key,
    required this.child,
  }):super(key: key);


  @override
  Widget build(BuildContext context)
  {
        final GlobalKey<SliderDrawerState> sliderDrawerKey = GlobalKey<SliderDrawerState>();


    return  SliderDrawer(
        key: sliderDrawerKey,
        slider: Container(
          color: const Color.fromARGB(255, 102, 102, 102),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child:  Column(
                  children: [
                    TextButton(
                      onPressed:  (){Navigator.pushNamed(context, '/page_gestions_adhesions_en_cours'); },
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      child: const Text(
                        "Gestions des adhésions en cours",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),)),
                    Text("Ajouter",),
                    Text("Modifier",),
                    Text("Supprimer",),
                  ],
                )
              ),
              const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextButton(
                      onPressed:  (){},
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      child: const Text(
                        "Etats statistique",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),)),
                  ],
                )
              ),
              const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){Navigator.pushNamed(context, "/page_requete_multi_criteres");},
                      child: const Text(
                        "Requête multi critères",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),)),
                  ],
                )
              ),
              const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        "Transfert des Adhésions non renouvelées A1",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),)),
                  ],
                )
              ),
              const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        "Recherche des adhérents éligibles",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ),
                  ],
                )
              ),
              const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
              Container(
                padding: const EdgeInsets.all(10),
                child:  Column(
                  children: [
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        "Gestion: Tarifs, paramétres, Cert. Médicau, Nlle saison",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ),
                    Text("Liste des certificats médicaux obsolètes",),
                    Text("Mise en forme & coloriage des fichiers",),
                    Text("Création du nouvel exercice",),
                    Text("Recensement des inchoérences",),
                    Text("Accès aux paramétres & tarifs",),
                    Text("Impression du bordeau de transmission",),

                  ],
                )
              ),
          ]),
          ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          title: const Text('Les randonneurs Dracéniens', style: TextStyle(color: Colors.white)),
          leading: 
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.menu),
            onPressed: () {
              if(sliderDrawerKey.currentState!.isDrawerOpen){
                sliderDrawerKey.currentState!.closeSlider();
              }
              else{
                sliderDrawerKey.currentState!.openSlider();
              }
            
            },
          ),
          actions: [
            IconButton(
            color: Colors.white,
            icon: const Icon(Icons.arrow_back_outlined ),
            onPressed: () {Navigator.pop(context);},
          ),
          ],
        
          ),
      sliderOpenSize: 400,
      child: child,);
  }
} 