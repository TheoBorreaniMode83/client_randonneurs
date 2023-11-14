
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:les_randonneurs_draceniens_client_administratif/assets/text_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/gstRoute/gst_route.dart';

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
                padding: const EdgeInsets.fromLTRB(10,20,10,30),
                width: double.maxFinite,
                child:Image.network(
                  scale: 2,
                  'lib/assets/LogoRando.webp'
                  ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child:  Column(
                  children: [
                    TextButton(
                      onPressed:  (){GstRoute.goToRoute(context, GstRoute.goToGestionsAdhesionsEnCours); },
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      child: const Text(
                        TextContent.titleGestionsDesAdhesions,
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
                      onPressed:  (){},
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      child: const Text(
                        TextContent.titleStatistiques,
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
                      onPressed:  (){GstRoute.goToRoute(context, GstRoute.goToAdherentsEligibles);},
                      child: const Text(
                        TextContent.titleRequeteMultiCriteres,
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
                        TextContent.titleTransfertAdgesionsNonRenouvelees,
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
                      onPressed:  (){GstRoute.goToRoute(context, GstRoute.goToAdherentsEligibles);},
                      child: const Text(
                        TextContent.titleRechercheAdherentsEliginlesMedailles,
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
                        TextContent.titleParametres,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.titleCertificatsMedicaux,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.miseEnForme,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.titleExercice,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.titleInchoerence,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.titleParametresTarifs,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    TextButton(
                      style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                      onPressed:  (){},
                      child: const Text(
                        TextContent.titleImpression,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    const Divider(height: 2,thickness: 1,indent: 0,endIndent: 0,color: Colors.black,),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child:  Column(
                      children: [
                        TextButton(
                          style: ButtonStyle(overlayColor:  MaterialStatePropertyAll<Color>(Colors.amber.withOpacity(0.3))),
                          onPressed:  (){GstRoute.goToRoute(context, GstRoute.goToTest);},
                          child: const Text(
                            TextContent.titleTest,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                        ),
                      )
                    ),]))
                    

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
            onPressed: () {GstRoute.goToRoute(context, GstRoute.goToNavigatePage);},
          ),

          ],
        
          ),
      sliderOpenSize: 460,
      child: child,);
  }
} 