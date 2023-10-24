class CustomTextFormFieldValidator{


  final List<String? Function(String?)> _listFunctionsTests = [];

  int? _minLength;
  int? _maxLength;
  //final RegExp RegExAlphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
  final RegExp _regExInteger = RegExp(r'^[0-9]+$');
  final RegExp _regExMail =  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  //---------------------------------------------------------------------------
  //Setteurs qui donne la possibilitée à l'utilisateur de paramétrer simplement
  //la vérification au sein des formulaires
  //---------------------------------------------------------------------------
  CustomTextFormFieldValidator setIsInteger(bool bool){
    _setFunction(bool,_testIsInteger);
    return this;}
  CustomTextFormFieldValidator setIsMail(bool bool){
    _setFunction(bool,_testIsMail);
    return this;}
  CustomTextFormFieldValidator setMinLength(int? min, bool bool){
    // 1) test des erreurs utilisateurs possibles
    if(min==null && bool==true){
      throw "Attention si le booléen est true min ne peut pas etre null";}
    else if(min!=null && bool==false){
      throw "Attention si le booléen est false min ne peut pas etre non null";}
    else if(min!=null){
      _minLength=min;}
    _setFunction(bool,_testMinLength);
    return this;} 
  CustomTextFormFieldValidator setMaxLength(int? max, bool bool){
    if(max==null && bool==true){
      throw "Attention si le booléen est true max ne peut pas etre null";}
    else if(max!=null && bool==false){
      throw "Attention si le booléen est false max ne peut pas etre non null";}
    else if(max!=null){
      _maxLength=max;}
    _setFunction(bool,_testMaxLength);
    return this;} 
  //---------------------------------------------------------------------------
  //fonctions qui permette de vérifier si le contenu est ok pas repport à un et un seul critére 
  //---------------------------------------------------------------------------
  String? _testIsInteger(String? content){
    return _testUnitaire(content: content, errorMessage: "merci d'entrer un entier",  regEx: _regExInteger); }
  String? _testIsMail(String? content){
    return _testUnitaire(content: content, errorMessage: "merci d'entrer un mail valide",  regEx: _regExMail); }
  String? _testMinLength(String? content){
    int minLengthPostTreatment = _minLength??0;
    if((content!=null && content.length<minLengthPostTreatment) || (content==null && _minLength==0)){
      return "Il vous faut au minimum $_minLength caractères";}
    else{return null;}}
  String? _testMaxLength(String? content){
    int maxLengthPostTreatment = _maxLength??0;
    if((content!=null && content.length>maxLengthPostTreatment) || (content==null && _maxLength==0)){
      return "Il vous faut au maximum $_maxLength caractères";}
    else{return null;}}
  //---------------------------------------------------------------------------
  //fonction qui test tous le critères que l'utilisateurs a paramétré 
  String? testString(String? content)
  {
    String? postTraitement;
    for(int i = 0 ; i<_listFunctionsTests.length ; i++){
      postTraitement = _listFunctionsTests[i](content);
      if(postTraitement != null){
        return postTraitement;
      }
    }
    return null;
  }

  /*
    Role: 
      => Test si le contenu correspond à la regExp
    Entrée: 
      => content une chaine de caractère qui est le contenu à annalyser
      => errorMessage  une chaine de caractères 
      => regEx l'expression régulière à vérifier
    Sortie:
      => si oui retourne null 
      => sinon retourne la chaine de caractères errorMessage
  */
  _testUnitaire({required String? content, required String errorMessage,required RegExp regEx, })
  {
    if(content==null){
      return errorMessage;
    }
    else if(regEx.hasMatch(content))
    {
      return null;
    }
    else
    {
      return errorMessage;
    }
  }

  /*
  Cette fonction à pour role de gérer la liste contenant les fonctions
  qui seront appelé lors de la vérification du contenu du formulaire
  */
  void _setFunction(bool bool, String? Function(String?) function){
    //Si la liste ne contient pas la fonction et que le dévéloppeur veut l'ajouter
    if(!_listFunctionsTests.contains(function) && bool){
      _listFunctionsTests.add(function);
    }
    //Si la liste contient la fonction et que le dévéloppeur veut l'ajouter
    else if(!_listFunctionsTests.contains(function)){
      _listFunctionsTests.remove(function);
      _listFunctionsTests.add(function);
    }
    //Si la liste contient la fonction et que le développeur veut la supprimer
    else if(_listFunctionsTests.contains(function) && !bool){
      _listFunctionsTests.remove(function);
    }
  }
}