import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/ville.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/statut.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/civilite.dart';

class GstHttpServer{

  //-------------------------------------------------------------------------------------
  // Attributs qui permettent de simuler la base de donnée
  //-------------------------------------------------------------------------------------

  static List<Adherent> _dbAdherents = [
    Adherent(id: 0,nom: "Martin", prenom: "Gabriel", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "Adhésion", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000, ),
    Adherent(id: 1,nom: "Bernard", prenom: "Léo", civilite: "Monsieur",anneePremiereAdhesion: 2010, statut: "Adhésion", nomVille: "Montferat",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 2,nom: "Thomas", prenom: "Raphael", civilite: "Monsieur",anneePremiereAdhesion: 1999, statut: "Réadhésion", nomVille: "Frejus",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 3,nom: "Petit", prenom: "Louis", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "R.Santé", nomVille: "Brignole",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 4,nom: "Robert", prenom: "Mael", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "Pass Dec", nomVille: "Congolin",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 1990),
    Adherent(id: 5,nom: "Richard", prenom: "Arthur", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "Adhésion", nomVille: "Paris",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 6,nom: "Durand", prenom: "Jules", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "R.Santé", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 7,nom: "Dubois", prenom: "Noah", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "Adh.Non/Lic", nomVille: "Marseille",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 8,nom: "Moreau", prenom: "Adam", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "Adh.Non/Lic", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 9,nom: "Laurent", prenom: "Lucas", civilite: "Monsieur",anneePremiereAdhesion: 2000, statut: "M.Nordique", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 10,nom: "Roux", prenom: "Esther", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "Adhésion", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 11,nom: "Lambert", prenom: "Marguerite", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "Adh.Aut.Ass", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 12,nom: "Leroy", prenom: "Helen", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "Réadhésion", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 13,nom: "Lefebvre", prenom: "Hélène", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "Adhésion", nomVille: "Congolin",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 14,nom: "Bertrand", prenom: "Adrienne", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "R.Santé", nomVille: "Frejus",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 15,nom: "Girard", prenom: "Aline", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "R.Santé", nomVille: "Frejus",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),
    Adherent(id: 16,nom: "David", prenom: "Pascale", civilite: "Madame",anneePremiereAdhesion: 2000, statut: "R.Santé", nomVille: "Draguignan",joursNaissance: 10,moisNaissance: 10,anneeNaissance: 2000),

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

  static List<Civilite> _dbCivilite = [
    Civilite(nom: "Monsieur"),
    Civilite(nom: "Madame"),
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
  static List<Civilite> _civilite = [];

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

    static void _upgradeDbCivilite(){
    _dbCivilite = List<Civilite>.from(_civilite);
  }

  static void _loadDbCivilite(){
    _civilite = List<Civilite>.from(_dbCivilite);
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

  static List<String> getCivilite(){
    _loadDbCivilite();
    List<String> result = [];
    for(int i =0 ; i<_civilite.length ; i++){
      result.add(GstHttpServer._civilite[i].nom);
    }
    return result;
  }


}