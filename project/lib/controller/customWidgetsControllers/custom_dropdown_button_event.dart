class CustomDropdownButtonEvent{

  void Function(String?)? _onChanged;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomDropdownButtonEvent setOnChanged(void Function(String?)? onChanged){
    _onChanged = onChanged;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  void Function(String?)? getOnChanged(){
    return _onChanged;}

}