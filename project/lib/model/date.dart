class Date{
  
  int jours;
  int mois;
  int annee;

  Date({
    required this.jours,
    required this.mois,
    required this.annee});

  @override
  String toString() {
    String j;
    String m;
    jours<10 ? j="0$jours" : j=jours.toString();
    mois<10 ? m="0$mois" : m=mois.toString();

    return "$j/$m/$annee";
  }

}