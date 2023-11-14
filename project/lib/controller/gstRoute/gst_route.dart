import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/data_structures/uplet/triplet.dart';
import 'package:page_transition/page_transition.dart';

//Importation des pages
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_connexion.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_navigation_application.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestionnaire_randonneurs.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestion_tarif.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_requete_multi_criteres.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_gestions_adhesions_en_cours.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_test.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/pages/page_adherents_eligibles.dart';

class GstRoute{
  
  // Si dessous la première page de l'application
  static dynamic routeRoot = const PageConnexion();

  //
  static Map<String, Widget Function(BuildContext)> routes ={
    '/pageNavigationApplication': (context) => const PageNavigationApplication(),
    '/page_gestionnaire_randonneurs': (context) => const PageGestionnaireRandonneurs(),
    '/page_gestion_tarif': (context) => const PageGestionTarif(),
    '/page_requete_multi_criteres': (context) => const PageRequeteMultiCriteres(),
    '/page_gestions_adhesions_en_cours': (context) => const PageGestionsAdhesionsEnCours(),
    '/page_test': (context) => const PageTest(),
  };

  //https://www.dhiwise.com/post/creating-engaging-apps-flutter-page-transitions
  static Map<String,Function> tabTransition = {
    "Transition1":(context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    const curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
    "Transition2":(context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child
                      );}



  };

  //
  static void goToRoute(BuildContext context, String name){

    //Si dessous les navigations avec l'interaction avec la pile associé
    Map<String, Triplet> routesFunctions = {
      'pageNavigationApplication'        : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageNavigationApplication()    , tabTransition['Transition1']! ),
      'page_gestionnaire_randonneurs'    : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageGestionnaireRandonneurs()  , tabTransition['Transition1']! ),
      'page_gestion_tarif'               : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageGestionTarif()             , tabTransition['Transition2']! ),
      'page_requete_multi_criteres'      : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageRequeteMultiCriteres()     , tabTransition['Transition2']! ),
      'page_gestions_adhesions_en_cours' : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageGestionsAdhesionsEnCours() , tabTransition['Transition2']! ),
      'page_test'                        : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageTest()                     , tabTransition['Transition2']! ),
      'page_adherents_eligibles'         : Triplet<Function,Widget,Function>( Navigator.of(context).pushReplacement , const PageAdherentsEligibles()       , tabTransition['Transition2']! ),
      };
      if(routesFunctions[name]!=null){
        Function f = routesFunctions[name]!.getFirst();
        Widget   x = routesFunctions[name]!.getSecond() ;
        Function y = routesFunctions[name]!.getTroisieme() ;
        f(_createRoute(x,y));
      }else{
        throw "Erreur fichier ";}
  }

  
  static Route _createRoute(Widget pageCible,dynamic transition) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => pageCible,
    transitionsBuilder: transition 
  );}

  static String goToNavigatePage             = "pageNavigationApplication";
  static String goToGestionnaireRandonneurs  = "page_gestionnaire_randonneurs";
  static String goToGestionTarif             = "page_gestion_tarif";
  static String goToRequeteMultiCriteres     = "page_requete_multi_criteres";
  static String goToGestionsAdhesionsEnCours = "page_gestions_adhesions_en_cours";
  static String goToTest                     = "page_test";
  static String goToAdherentsEligibles       = "page_adherents_eligibles";


}















class _AnimatedCrossFadeExample extends StatefulWidget {
    @override
    _AnimatedCrossFadeExampleState createState() =>
        new _AnimatedCrossFadeExampleState();
  }
  
  class _AnimatedCrossFadeExampleState extends State<_AnimatedCrossFadeExample> with TickerProviderStateMixin {
    late AnimationController _controller;
    late Animation<Offset> _animation;
  
    @override
    void initState() {
      super.initState();
  
      _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(-0.5, 0.0),
        end: const Offset(0.5, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));
    }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Woolha.com Flutter Tutorial'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: SlideTransition(
              position: _animation,
              transformHitTests: true,
              textDirection: TextDirection.ltr,
                child: Text('Woolha.com'),
            ),
          )
        ),
      );
    }
  }