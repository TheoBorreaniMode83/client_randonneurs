import 'package:les_randonneurs_draceniens_client_administratif/model/data_structures/uplet/uplet.dart';

class Triplet<A, B, C>  extends Uplet{
  A _first;
  B _second;
  C _troisieme;

  Triplet(this._first, this._second, this._troisieme);
  
  void setFirst(A value){
    _first = value;}
  void setSecond(B value){
    _second = value;}
  void setTroisieme(C value){
    _troisieme = value;}
  A getFirst(){
    return _first;}
  B getSecond(){
    return _second;}
  C getTroisieme(){
    return _troisieme;}
  
  @override
  String toString() => '$runtimeType: $_first, $_second, $_troisieme';
}