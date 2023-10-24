class CustomTextButtomEvent{
  void Function()? _onPressed;
  void Function()? _onLongPress;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomTextButtomEvent setOnPressed(void Function()? onPressed){
    _onPressed=onPressed;
    return this;}
  CustomTextButtomEvent setOnLongPress(void Function()? onLongPress){
    _onLongPress=onLongPress;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  void Function()? getOnPressed(){
    return _onPressed;}
  void Function()? getOnLongPress(){
    return _onLongPress;}
}