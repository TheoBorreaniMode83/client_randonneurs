class Utility{
  static DateToString( int dateNaissance1,   int dateNaissance2,   int dateNaissance3,){
    int x =0;
      if(dateNaissance1!=-1&&dateNaissance2!=-1&&dateNaissance3!=-1){
        x=dateNaissance1+dateNaissance2*100+dateNaissance3*10000;
      }
      else{
        x=-1;
      }
      return x;
  }

  static int dateToInt(String? date){

    if(date==null){
      return -1;
    }


    if(RegExp(r'^[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]$').hasMatch(date)){
      int x =0;
      dynamic tmp = date.split('/');
      /*
      La formule ici permet de transformer les 3 entiers qui forme une date en un entier qui sont  comparable entre eux
      */
      x=(31-int.parse(tmp[0]))+(12-int.parse(tmp[1]))*100+int.parse(tmp[2])*10000;
      print(x);
      return x;
    }
    else{
      return -1;
    }
  }

  static f(String? integer){
    try{
      print(integer);
      return int.parse(integer!);
    }
    catch(e){
      return -1;
    }
  }
  
}
