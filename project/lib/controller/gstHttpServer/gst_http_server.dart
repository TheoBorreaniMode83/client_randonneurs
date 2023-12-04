import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';

class GstHttpServer{

  static List<Adherent> _dbAdherents = [
      Adherent(id: 0,nom: "Martin", prenom: "Gabriel", civilite: "xxx"),
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
    
  static List<Adherent> _adherents = [];


  //-------------------------------------------------------------------------------------

  static void _upgradeDbAdherents(){
        _dbAdherents = List<Adherent>.from(_adherents);
  }

  static void _loadDbAdherents(){
    _adherents = List<Adherent>.from(_dbAdherents);
  }

  //-------------------------------------------------------------------------------------

  dbAdherentstoString(){

  }

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

  

}