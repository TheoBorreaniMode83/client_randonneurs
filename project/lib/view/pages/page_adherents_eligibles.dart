import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/englobe_widgets.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/assets/text_content.dart';

class PageAdherentsEligibles extends StatefulWidget {
  const PageAdherentsEligibles({super.key});
  @override
  State<PageAdherentsEligibles> createState() => _PageAdherentsEligibles();
}

class _PageAdherentsEligibles extends State<PageAdherentsEligibles> {
  
  final CustomTextStyle title = StyleFactory.createCustomTextStyleTitle();



  List<Adherent> adherents = [];
  //final _formKey = GlobalKey<FormState>();
  List<Adherent> baseDonnees = [
      Adherent(id: 0,nom: "Martin", prenom: "Gabriel", civilite: "xxx",),
      Adherent(id: 1,nom: "Bernard", prenom: "Léo", civilite: "yyy"),
      Adherent(id: 2,nom: "Thomas", prenom: "Raphael", civilite: "zzz"),
      Adherent(id: 3,nom: "Petit", prenom: "Louis", civilite: "xxx"),
      Adherent(id: 4,nom: "Robert", prenom: "Mael", civilite: "yyy"),
      Adherent(id: 5,nom: "Richard", prenom: "Arthur", civilite: "zzz"),
      Adherent(id: 6,nom: "Durand", prenom: "Jules", civilite: "xxx"),
      Adherent(id: 7,nom: "Dubois", prenom: "Noah", civilite: "yyy"),
      Adherent(id: 8,nom: "Moreau", prenom: "Adam", civilite: "zzz"),
      Adherent(id: 9,nom: "Laurent", prenom: "Lucas", civilite: "zzz"),
    ];

    List<Adherent> get(){
    return  List.from(baseDonnees);
  }
  void upgrade(List<Adherent> x){
    baseDonnees=List.from(x);
  }


  @override
  void initState() {
    super.initState();

  title.setContent(
        TextContent.titleRechercheAdherentsEliginlesMedailles);

  }

  List<Widget> makeElt(){
    List<Widget> list = [];
    adherents=get();

    list.add(
      Center(
        child: CustomText(
        customTextStyle:title)),);

    for(int i=0 ; i<adherents.length;i++){
      list.add(
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 202, 202),
            border: Border.all(
              width: 1
            ),
          ),
          margin: const EdgeInsets.all(2),
          child: Row(
            children: [
              Expanded(child:Text(adherents[i].nom)),
              Expanded(child:Text(adherents[i].prenom)),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){

                      },
                      icon: const Icon(Icons.workspace_premium )),
                  ],
                )
            ],
          ),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EnglobeWidgets(
        child:ResponsiveView(
          children:makeElt(),
        ),
      ),);
    
  }



}