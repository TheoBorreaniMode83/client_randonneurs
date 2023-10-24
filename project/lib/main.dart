import 'package:flutter/material.dart';

//Importtation des pages accessible depuis une autre
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_connexion.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_ajouter_adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_navigation_application.dart';


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
        //'/': (context) => const PageGestionAdherent(),
        //'/': (context) => const PageGestionnaireRandonneurs(),
        }
    );
  }
}

