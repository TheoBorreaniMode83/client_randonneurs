class CustomTextFormFieldEvent{
    void Function()? _onChanged;
    void Function()? _onClickButtom;
  //---------------------------------------------------------------------
  //Setteurs
  //---------------------------------------------------------------------
  CustomTextFormFieldEvent setOnChanged(void Function()? onChanged){
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
  void Function()? getOnChanged(){
    return _onChanged;
  }
  void Function()? getOnClickButtom(){
    return _onClickButtom;
  }
}