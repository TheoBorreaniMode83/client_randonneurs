import 'package:flutter/material.dart';

//Importtation des pages accessible depuis une autre
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_connexion.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_ajouter_adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_navigation_application.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestionnaire_randonneurs.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_principal_gestion_adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestion_adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_boite_a_outils.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestion_tarif.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_requete_multi_criteres.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestions_adhesions_en_cours.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageConnexion(),
      routes: {
        '/pageAjouterAdherent': (context) => const PageAjouterAdherent(),
        '/pageNavigationApplication': (context) => const PageNavigationApplication(),
        '/page_gestionnaire_randonneurs': (context) => const PageGestionnaireRandonneurs(),
        '/page_principal_gestion_adherent': (context) => const PagePrincipalGestionAdherent(),
        '/page_gestion_adherent': (context) => const PageGestionAdherent(),
        '/page_boite_a_outils': (context) => const PageBoiteAOutils(),
        '/page_gestion_tarif': (context) => const PageGestionTarif(),
        '/page_requete_multi_criteres': (context) => const PageRequeteMultiCriteres(),
        '/page_gestions_adhesions_en_cours': (context) => const PageGestionsAdhesionsEnCours(),
        }
    );
  }
}

