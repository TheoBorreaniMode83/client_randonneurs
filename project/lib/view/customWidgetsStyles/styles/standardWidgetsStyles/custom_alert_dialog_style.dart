class CustomAlertDialogStyle{

  double? _height;
  double? _width;
  String? _title;

  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomAlertDialogStyle setHeight(double height){
    _height=height;
    return this;}
  CustomAlertDialogStyle setWidth(double width){
    _width=width;
    return this;}
  CustomAlertDialogStyle setTitle(String title){
    _title=title;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  double? getHeight(){
    return _height;}
  double? getWidth(){
    return _width;}
  String? getTitle(){
    return _title;}
}
