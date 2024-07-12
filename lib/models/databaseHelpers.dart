import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'formulaire.dart';



class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();





  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }





  /// Ma méthode pour initialiser ma base de données
  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'formulaire_database.db');
    print('Database path: $path'); // Log pour vérifier le chemin de la base de données
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        print('Creating table form_data'); // Log pour vérifier que la table est créée
        await db.execute('''
          CREATE TABLE IF NOT EXISTS form_data (
          id INTEGER PRIMARY KEY,
          numeroPiece TEXT,
          naturePiece TEXT,
          prenom TEXT,
          nom TEXT,
          telephone TEXT,
          telephone2 TEXT,
          telephoneProche TEXT,
          dateNaissance TEXT,
          situtaionMatrimoniale TEXT,
          sexe TEXT,
          niveauEtude TEXT,
          region TEXT,
          ville TEXT,
          localisation TEXT,
          createAt TEXT
        )
        ''');
        print('Table form_data created'); // Log pour vérifier que la table est créée
      },
    );
  }






  /// Ma méthode pour l'insertion des données dans ma base dans la table form_data
  Future<int> insertFormData(Map<String, dynamic> formData) async {
    final db = await database;
    try {
      return await db.insert('form_data', formData);
    } catch (e) {
      print('Error inserting data: $e');
      throw e;
    }
  }





  Future<List<Map<String, dynamic>>> queryAllFormData() async {
    final Database db = await database;
    return await db.query('form_data');
  }





  /// Ma méthode pour comppter le nom d'enregistrement dans ma table form_data
  Future<int> getFormDataCount() async {
    final db = await database;
    var result = await db.rawQuery('SELECT COUNT(*) FROM form_data');
    int count = Sqflite.firstIntValue(result)!;
    return count;
  }






  /// Ma méthode pour supprimer un élément de la base de données
  Future<int> deleteFormData(int id) async {
    final db = await database;
    return await db.delete(
      'form_data',
      where: 'id = ?',
      whereArgs: [id],
    );
  }






  /// Ma méthode pour récupérer l'ensemble des enregsistrement dans ma table form_data
  Future<List<Map<String, dynamic>>> getAllFormData() async {
    final db = await database;
    var result = await db.query('form_data', columns: [
      'numeroPiece',
      'naturePiece',
      'prenom',
      'nom',
      'telephone',
      'telephone2',
      'telephoneProche',
      'dateNaissance',
      'situtaionMatrimoniale',
      'sexe',
      'niveauEtude',
      'region',
      'ville',
      'localisation',
      'createAt',
    ]);
    return result;
  }
}





/// Extension pour convertir le modèle en Map
extension FormulaireExtension on Formulaire {
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
