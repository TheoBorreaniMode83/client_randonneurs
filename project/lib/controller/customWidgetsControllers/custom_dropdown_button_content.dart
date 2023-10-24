class CustomDropdownButtonContent{
  String? _dropdownvalue;
  List<String> _items = [];
  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomDropdownButtonContent setDropdownValue(String dropdownvalue){
    _dropdownvalue=dropdownvalue;
    return this;}
  CustomDropdownButtonContent setItems(List<String> items){
    _items=items;
    return this;}
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  String? getDropDownValue(){
    return _dropdownvalue;}
  List<String> getItems(){
    return _items;}
}