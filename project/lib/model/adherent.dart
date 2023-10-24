class Adherent{
    int? id;
    String nom;
    String prenom;
    String civilite;
    int? joursNaissance;
    int? moisNaissance;
    int? anneeNaissance;
    String? nomVille;
    String? codeDepartement;
    String? codeCommune;
    String? codeNatureVoie;
    String? numeroVoie;
    String? libeletVoie;
    String? telephonePortable;
    String? adresseMail;
    String? typeLicence;
    String? nomLicence;
    double? prixLicence;
    double? partFFRPLicence;
    double? montantCheque;
    double? montantLiquide;
    double? montantBoutiqueEtRevue;
    int? joursPremiereAdhesion;
    int? moisPremiereAdhesion;
    int? anneePremiereAdhesion;
    String? numeroLicence;
    int? joursDernierCertificatMedical;
    int? moisDernierCertificatMedical;
    int? anneeDernierCertificatMedical;
    String? statut;
    String? nomContactUrgence;
    String? prenomContactUrgence;
    String? telephoneContactUrgence;

    Adherent({
      this.id,
      required this.nom,
      required this.prenom,
      required this.civilite,
      this.joursNaissance,
      this.moisNaissance,
      this.anneeNaissance,
      this.nomVille,
      this.codeDepartement,
      this.codeCommune,
      this.codeNatureVoie,
      this.numeroVoie,
      this.libeletVoie,
      this.telephonePortable,
      this.adresseMail,
      this.typeLicence,
      this.nomLicence,
      this.prixLicence,
      this.partFFRPLicence,
      this.montantCheque,
      this.montantLiquide,
      this.montantBoutiqueEtRevue,
      this.joursPremiereAdhesion,
      this.moisPremiereAdhesion,
      this.anneePremiereAdhesion,
      this.numeroLicence,
      this.joursDernierCertificatMedical,
      this.moisDernierCertificatMedical,
      this.anneeDernierCertificatMedical,
      this.statut,
      this.nomContactUrgence,
      this.prenomContactUrgence,
      this.telephoneContactUrgence,
      }
      );

      Map<String, Object?> getJson(){
        return {
            'id' : id,
            'nom': nom,
            'prenom': prenom,
            'civilite': civilite,
            'joursNaissance': joursNaissance,
            'moisNaissance': moisNaissance,
            'anneeNaissance': anneeNaissance, 
            'nomVille': nomVille,
            'codeDepartement': codeDepartement,
            'codeCommune': codeCommune,
            'codeNatureVoie': codeNatureVoie,
            'numeroVoie': numeroVoie,
            'libeletVoie': libeletVoie,
            'telephonePortable': telephonePortable,
            'adresseMail': adresseMail,
            'typeLicence': typeLicence,
            'nomLicence': nomLicence,
            'prixLicence': prixLicence,
            'partFFRPLicence': partFFRPLicence,
            'montantCheque': montantCheque,
            'montantLiquide': montantLiquide,
            'montantBoutiqueEtRevue': montantBoutiqueEtRevue,
            'joursPremiereAdhesion': joursPremiereAdhesion,
            'moisPremiereAdhesion': moisPremiereAdhesion,
            'anneePremiereAdhesion': anneePremiereAdhesion,
            'numeroLicence': numeroLicence,
            'joursDernierCertificatMedical': joursDernierCertificatMedical,
            'moisDernierCertificatMedical': moisDernierCertificatMedical,
            'anneeDernierCertificatMedical': anneeDernierCertificatMedical,
            'statut': statut,
            'nomContactUrgence': nomContactUrgence,
            'prenomContactUrgence': prenomContactUrgence,
            'telephoneContactUrgence': telephoneContactUrgence
            };
      }
  
}