class Formulaire {
  String numeroPiece;
  String naturePiece;
  String prenom;
  String nom;
  String telephone;
  String telephone2;
  String telephoneProche;
  String dateNaissance;
  String situtaionMatrimoniale;
  String sexe;
  String niveauEtude;
  String region;
  String ville;
  String localisation;
  DateTime createAt;

  Formulaire({
    required this.numeroPiece,
    required this.naturePiece,
    required this.prenom,
    required this.nom,
    required this.telephone,
    required this.telephone2,
    required this.telephoneProche,
    required this.dateNaissance,
    required this.situtaionMatrimoniale,
    required this.sexe,
    required this.niveauEtude,
    required this.region,
    required this.ville,
    required this.localisation,
    required this.createAt
  });

  // Méthode pour convertir l'objet en Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'numeroPiece': numeroPiece,
      'naturePiece': naturePiece,
      'prenom': prenom,
      'nom': nom,
      'telephone': telephone,
      'telephone2': telephone2,
      'telephoneProche': telephoneProche,
      'dateNaissance': dateNaissance,
      'situtaionMatrimoniale': situtaionMatrimoniale,
      'sexe': sexe,
      'niveauEtude': niveauEtude,
      'region': region,
      'ville': ville,
      'localisation': localisation,
      'createAt': createAt.toIso8601String(),
    };
  }
}
