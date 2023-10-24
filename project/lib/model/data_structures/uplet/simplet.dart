import 'package:les_randonneurs_draceniens_client_administratif/model/data_structures/uplet/uplet.dart';

class Simplet<A> extends Uplet{
  A _first;
  Simplet(this._first);

  void setFirst(A value){
    _first = value;}

  A getFirst(){
    return _first;}

}