import 'package:les_randonneurs_draceniens_client_administratif/model/data_structures/uplet/uplet.dart';

class Doublet<A, B>  extends Uplet{
  A _first;
  B _second;

  Doublet(this._first, this._second);

  void setFirst(A value){
    _first = value;}
  void setSecond(B value){
    _second = value;}
  A getFirst(){
    return _first;}
  B getSecond(){
    return _second;}
  
  @override
  String toString() => '$runtimeType: $_first, $_second';
}