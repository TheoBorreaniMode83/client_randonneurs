class CustomTextFormFieldEvent{
    void Function(String)? _onChanged;
    void Function()? _onClickButtom;
  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomTextFormFieldEvent setOnChanged(void Function(String)? onChanged){
    _onChanged = onChanged;
    return this;
  }
  CustomTextFormFieldEvent setOnClickButtom(void Function()? onClickButtom){
    _onClickButtom = onClickButtom;
    return this;
  }
  //---------------------------------------------------------------------
  //Getteurs
  //---------------------------------------------------------------------
  void Function(String)? getOnChanged(){
    return _onChanged;
  }
  void Function()? getOnClickButtom(){
    return _onClickButtom;
  }
}