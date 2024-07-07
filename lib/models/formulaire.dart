class Formulaire {
  final int id;
  final String numeroPiece;
  final String naturePiece;
  final String prenom;
  final String nom;
  final String telephone;
  final String? telephone2;
  final String? telephoneProche;
  final String dateNaissance;
  final String situtaionMatrimoniale;
  final String sexe;
  final String niveauEtude;
  final String region;
  final String ville;
  final String localisation;

  const Formulaire({
    required this.id,
    required this.naturePiece,
    required this.numeroPiece,
    required this.prenom,
    required this.nom,
    required this.telephone,
    this.telephone2,
    this.telephoneProche,
    required this.dateNaissance,
    required this.situtaionMatrimoniale,
    required this.sexe,
    required this.niveauEtude,
    required this.region,
    required this.ville,
    required this.localisation

  });
}