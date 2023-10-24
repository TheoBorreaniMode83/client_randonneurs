import 'package:les_randonneurs_draceniens_client_administratif/model/data_structures/uplet/doublet.dart';

class StableRapportStyle{

  final Doublet _ratio = Doublet(1, 1);

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------

  StableRapportStyle setRatio(int first, int second){
    _ratio.setFirst(first);
    _ratio.setSecond(second);
    return this;}

  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------

  Doublet getRatio(){
    return _ratio;}

}