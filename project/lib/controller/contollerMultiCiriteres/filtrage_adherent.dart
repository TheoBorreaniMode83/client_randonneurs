import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'utility.dart';
import 'package:diacritic/diacritic.dart';

class FiltrageAdherents{ 

  /// [adherents] est la liste des adhérents à filtrer
  /// [exerciceAnneeActuel] est l'année de la saison actuel du système
  /// [filtreNom] est la valeur du champ nom
  /// [filtrePrenom] est la valeur du champ prenom
  /// [filtreCivilite] est la valeur du dropdown buttom civilité 
  /// [filtreCivilite2] est la valeur du dropdown étendu assoicié à buttom civilé (<,=,...)

  static List<Adherent> runAdherents({
    required List<Adherent> adherents,
    required int exerciceAnneeActuel,  
    required String filtreNom ,
    required String filtrePrenom,
    required String filtreCivilite,required String filtreCivilite2,
    required String filtreStatut,required String filtreStatut2,
    required String filtreVille,required String filtreVille2,

    required String dateNaissance1,  required String dateNaissance2, // required int dateNaissance3,  required String dateNaissance4, 
    required int filtreAnneePremiereAdhesion,required String filtreAnneePremiereAdhesion2,
    //required int filtreAnneePremiereAdhesion4, required String filtreAnneePremiereAdhesion5,
    }){

    List<Adherent> tmp = new List<Adherent>.from(adherents);
    List<bool> booleanTab = List.filled(tmp.length,true);
    List<Adherent> result = [];

    for (int i=0 ; i<tmp.length ; i++){

      booleanTab[i]?_filtre1(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].nom , input: filtreNom):(){};
      booleanTab[i]?_filtre1(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].prenom , input: filtrePrenom):(){};
      booleanTab[i]?_filtre2(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].civilite, input: filtreCivilite, input2: filtreCivilite2):(){};
      booleanTab[i]?_filtre2(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].statut, input: filtreStatut, input2: filtreStatut2):(){};
      booleanTab[i]?_filtre2(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].nomVille, input: filtreVille, input2: filtreVille2):(){};

      booleanTab[i]?_filtre3(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].joursNaissance!+tmp[i].moisNaissance!*100+tmp[i].anneeNaissance!*10000 , input: Utility.dateToInt(dateNaissance1), input2: dateNaissance2):(){};
      //booleanTab[i]?_filtre3(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: exerciceAnneeActuel-tmp[i].anneePremiereAdhesion!, input: filtreAnneePremiereAdhesion, input2: filtreAnneePremiereAdhesion2):(){};
      //booleanTab[i]?_filtre3(tmp: tmp, booleanTab: booleanTab, indice: i, eltVerifier: tmp[i].anneePremiereAdhesion, input: filtreAnneePremiereAdhesion4, input2: filtreAnneePremiereAdhesion5):(){};

      if(booleanTab[i]){
        result.add(tmp[i]);
      }
    }


    return result;
  }

  //----------------------------------------------------------------------------------------------------------
  // SI DESSOUS NOUS AVONS LES FONCTIONS REPRESENTANT CHAQUES FILTRES
  //----------------------------------------------------------------------------------------------------------

  /// CETTE FONCTION PERMET DE FAIRE UNE RECHERCHE AVEC AUTO COMPLAISION
  /// L'argument [booleanTab] est présent dans toutes les fonctions filtres et permet de faire un marquage sur les elements de [tmp].
  /// L'argument [indice] permet de savoir quel élément nous somme entrain d'annaliser.
  /// L'argument [eltVerifier] est la valeur actuel à verifier en utilisant [input] comme comparatif
  static void _filtre1({required List<Adherent> tmp , required List<bool> booleanTab  , required int indice , required eltVerifier ,required String input}){
    RegExp regExp = RegExp(r"^"+removeDiacritics(input.toLowerCase())+r"(.*)");      
    if(!regExp.hasMatch(removeDiacritics(eltVerifier.toLowerCase()))){
      booleanTab[indice]=false;
    }
  }

  ///
  ///
  ///
  static void _filtre2({required List<Adherent> tmp , required List<bool> booleanTab  , required int indice , required eltVerifier ,required String input ,required String input2}){
    if(!(eltVerifier==input)&&(input2=="=")&&!(input=='vide')){
      booleanTab[indice]=false;
    }
    else if((eltVerifier==input)&&(input2=="≠")&&!(input=='vide')){
      booleanTab[indice]=false;
    }
  }

  ///
  ///
  ///
  static void _filtre3({required List<Adherent> tmp , required List<bool> booleanTab  , required int indice , required eltVerifier ,required int input ,required String input2}){




    if((eltVerifier!=input)&&(input2=="=")&&!(input==-1)){
      booleanTab[indice]=false;
    }
    else if((eltVerifier==input)&&(input2=="≠")&&!(input==-1)){
      booleanTab[indice]=false;
    }
    else if((eltVerifier>=input)&&(input2=="<")&&!(input==-1)){
      booleanTab[indice]=false;
    }
    else if((eltVerifier<=input)&&(input2==">")&&!(input==-1)){
      booleanTab[indice]=false;
    }
  }


}