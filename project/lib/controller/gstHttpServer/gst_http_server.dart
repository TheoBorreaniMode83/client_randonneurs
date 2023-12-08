import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/ville.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/statut.dart';

class GstHttpServer{

  //-------------------------------------------------------------------------------------
  // Attributs qui permettent de simuler la base de donnée
  //-------------------------------------------------------------------------------------

  static List<Adherent> _dbAdherents = [
    Adherent(id: 0,nom: "Martin", prenom: "Gabriel", civilite: "xxx",anneePremiereAdhesion: 2000, statut: "Statut1", nomVille: "Draguignan"),
    Adherent(id: 1,nom: "Bernard", prenom: "Léo", civilite: "yyy",anneePremiereAdhesion: 2010, statut: "Statut1", nomVille: "Montferat"),
    Adherent(id: 2,nom: "Thomas", prenom: "Raphael", civilite: "zzz",anneePremiereAdhesion: 1999, statut: "Statut1", nomVille: "Frejus"),
    Adherent(id: 3,nom: "Petit", prenom: "Louis", civilite: "xxx",anneePremiereAdhesion: 2000, statut: "Statut3", nomVille: "Brignole"),
    Adherent(id: 4,nom: "Robert", prenom: "Mael", civilite: "yyy",anneePremiereAdhesion: 2000, statut: "Statut1", nomVille: "Congolin"),
    Adherent(id: 5,nom: "Richard", prenom: "Arthur", civilite: "zzz",anneePremiereAdhesion: 2000, statut: "Statut1", nomVille: "Paris"),
    Adherent(id: 6,nom: "Durand", prenom: "Jules", civilite: "xxx",anneePremiereAdhesion: 2000, statut: "Statut2", nomVille: "Draguignan"),
    Adherent(id: 7,nom: "Dubois", prenom: "Noah", civilite: "yyy",anneePremiereAdhesion: 2000, statut: "Statut2", nomVille: "Marseille"),
    Adherent(id: 8,nom: "Moreau", prenom: "Adam", civilite: "zzz",anneePremiereAdhesion: 2000, statut: "Statut1", nomVille: "Draguignan"),
    Adherent(id: 9,nom: "Laurent", prenom: "Lucas", civilite: "zzz",anneePremiereAdhesion: 2000, statut: "Statut1", nomVille: "Draguignan"),
  ];

  static List<Statut> _dbStatuts = [
    Statut(nom: "Adh.Aut.Ass"),
    Statut(nom: "Adh.Non/Lic"),
    Statut(nom: "Adhésion"),
    Statut(nom: "M.Nordique"),
    Statut(nom: "Pass Dec"),
    Statut(nom: "R.Santé"),
    Statut(nom: "Réadhésion"),

  ];

  static List<String> _dbCivilite = [
  
  ];

  static List<Ville> _dbVilles = [
    Ville(nom: "Draguignan"),
    Ville(nom: "Toulon"),
    Ville(nom: "Ampus"),
    Ville(nom: "Les Arcs"),
    Ville(nom: "Bargemon"),
    Ville(nom: "Callas"),
    Ville(nom: "Châteaudouble"),
    Ville(nom: "Figanières"),
    Ville(nom: "Fayence"),
    Ville(nom: "Lorgues"),
    Ville(nom: "Le Luc"),
    Ville(nom: "Méounes-lès-Montrieux"),
  ];


  static List<String> _dbRubriquesFinancieres  = [
  
  ];





  //-------------------------------------------------------------------------------------
  // Attributs des données front
  //-------------------------------------------------------------------------------------
    
  static List<Adherent> _adherents = [];
  static List<Ville> _villes = [];
  static List<Statut> _statuts = [];

  //-------------------------------------------------------------------------------------
  // Fonction de recupération et mise a jours de la base de donnée
  //-------------------------------------------------------------------------------------

  static void _upgradeDbAdherents(){
        _dbAdherents = List<Adherent>.from(_adherents);
  }

  static void _loadDbAdherents(){
    _adherents = List<Adherent>.from(_dbAdherents);
  }

  static void _upgradeDbVilles(){
    _dbVilles = List<Ville>.from(_villes);
  }

  static void _loadDbVilles(){
    _villes = List<Ville>.from(_dbVilles);
  }

  static void _upgradeDbStatus(){
    _dbStatuts = List<Statut>.from(_statuts);
  }

  static void _loadDbStatuts(){
    _statuts = List<Statut>.from(_dbStatuts);
  }



  //-------------------------------------------------------------------------------------
  // A FINIR fonction de test qui affiche les adfhérents de la base de donnée
  //-------------------------------------------------------------------------------------
  dbAdherentstoString(){

  }

  //-------------------------------------------------------------------------------------
  // fonctions associé a l'attribut _adherents
  //-------------------------------------------------------------------------------------

  static List<Adherent> getAdherent(){
    _loadDbAdherents();
    return _adherents;
  }

  static void addAdherent(Adherent adherent){
    _loadDbAdherents();
    Adherent tmp = adherent;
    tmp.id=50;
    _adherents.add(adherent);
    _upgradeDbAdherents();
  }

  static void setAdherent(Adherent adherent){
    _loadDbAdherents();
    for(int i=0; i<_adherents.length; i++){
      if(_adherents[i].id==adherent.id){
        _adherents[i].nom=adherent.nom;
        _adherents[i].prenom=adherent.prenom;
      }
    }
    _upgradeDbAdherents();
  }

  static void deleteAdherent(int i){
    for (Adherent ii in _adherents){
      if(ii.id == _adherents[i].id){
        _adherents.remove(ii);
        _upgradeDbAdherents();  
        break;
      }
    }
  }

  static List<String> getListAnneesPremiereAdhesion(){
    List<String> result = [];
    int? tmp;
    for(int i =0 ; i<_adherents.length ; i++){
      tmp= _dbAdherents[i].anneePremiereAdhesion;
      if(!result.contains(_dbAdherents[i].anneePremiereAdhesion.toString())&& !(tmp == null)){
        result.add((_dbAdherents[i].anneePremiereAdhesion!.toString()));
      }
    }
    result.sort();
    return result;
  }

  static List<String> getListStatuts(){
     _loadDbStatuts();
    List<String> result = [];
    for(int i =0 ; i<_statuts.length ; i++){
      result.add(GstHttpServer._statuts[i].nom);
    }
    return result;
  }

  static List<String> getVille(){
    _loadDbVilles();
    List<String> result = [];
    for(int i =0 ; i<_villes.length ; i++){
      result.add(GstHttpServer._villes[i].nom);
    }
    return result;
  }

}