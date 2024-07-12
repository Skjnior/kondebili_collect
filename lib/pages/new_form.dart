import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:kondebili_collect/widgets/ui_helpers.dart';

import '../models/databaseHelpers.dart';
import '../models/formulaire.dart';

class NewForm extends StatefulWidget {
  const NewForm({super.key});

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> with TickerProviderStateMixin {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController numberPlaceController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController naturePieceController = TextEditingController();
  TextEditingController secondPhoneController = TextEditingController();
  TextEditingController prochePhoneController = TextEditingController();
  TextEditingController numberPieceController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final dateNaissanceController = TextEditingController(); // Ajouter ce champ
  String? sexe;
  String? situationMatrimoniale;
  String? niveauEtude;
  String? region;
  String? ville;
  String? localisation;



  // l'initialisation
  @override
  void initState() {
    super.initState();

    initialization();
  }


// Libérer les controlleurs
  @override
  void dispose() {
    numberPieceController.dispose();
    naturePieceController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    secondPhoneController.dispose();
    prochePhoneController.dispose();
    dateNaissanceController.dispose();
    super.dispose();
  }


  void initialization() async {
    FlutterNativeSplash.remove();
  }








/// Méthode pour ajouter les données dans la base de données
  Future<void> _submitForm() async {

    /// Vérifier si tous les champs obligatoires sont remplis

    if (numberPieceController.text.isEmpty ||
        firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneController.text.isEmpty) {

      /// Afficher un message d'erreur si des champs obligatoires sont vides

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Veuillez remplir tous les champs obligatoires')),
      );
      return;
    }

    final formulaire = Formulaire(
      numeroPiece: numberPieceController.text,
      naturePiece: naturePieceController.text,
      prenom: firstNameController.text,
      nom: lastNameController.text,
      telephone: phoneController.text,
      telephone2: secondPhoneController.text,
      telephoneProche: prochePhoneController.text,
      dateNaissance: dateNaissanceController.text,
      situtaionMatrimoniale: situationMatrimoniale ?? '',
      sexe: sexe ?? '',
      niveauEtude: niveauEtude ?? '',
      region: region ?? '',
      ville: ville ?? '',
      localisation: localisation ?? '',
      createAt: DateTime.now(),
    );

    /// Convertir l'objet Formulaire en Map<String, dynamic>
    Map<String, dynamic> formData = formulaire.toMap();

    /// Vérifier la connectivité Internet avec une autre bibliothèque.
    /// Pour cela, j'ai utilisé Internet_connection_checker

    var connected = await InternetConnectionChecker().hasConnection;
    if (connected == true) {
      /// L'appareil est connecté à Internet, j'ai simuler l'envoi des données en ligne
      print('Connecté à Internet');
      print('Données envoyées en ligne : $formData');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulaire soumis en ligne avec succès')),
      );
    } else {
      /// L'appareil n'est pas connecté à Internet, j'ai ajouter à la base de données SQLite
      print('Pas connecté à Internet');
      await DatabaseHelper().insertFormData(formData);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulaire soumis localement avec succès')),
      );
    }

    /// J'ai fais un test ici pour afficher le contenu de la table dans la console
    List<Map<String, dynamic>> rows = await DatabaseHelper().queryAllFormData();
    print('Contenu de la table form_data :');
    rows.forEach((row) {
      print(
        'ID: ${row['id']}, '
            'Numéro de pièce: ${row['numeroPiece']}, '
            'Nature de pièce: ${row['naturePiece']}, '
            'Prénom: ${row['prenom']}, '
            'Nom: ${row['nom']}, '
            'Téléphone: ${row['telephone']}, '
            'Deuxième téléphone: ${row['telephone2']}, '
            'Téléphone proche: ${row['telephoneProche']}, '
            'Date de naissance: ${row['dateNaissance']}, '
            'Situation matrimoniale: ${row['situationMatrimoniale']}, '
            'Sexe: ${row['sexe']}, '
            'Niveau d\'étude: ${row['niveauEtude']}, '
            'Région: ${row['region']}, '
            'Ville: ${row['ville']}, '
            'Localisation: ${row['localisation']}',
      );
    });

    // Retour à l'écran précédent après soumission
    Navigator.of(context).pop();
  }






  /// C'est mon ancien code, pour envoyer les données dans la base sqlite sans vérification de l'internet
  /*Future<void> _submitForm() async {
    // Vérifier si tous les champs obligatoires sont remplis
    if (numberPieceController.text.isEmpty ||
        firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneController.text.isEmpty) {
      // Afficher un message d'erreur si des champs obligatoires sont vides
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Veuillez remplir tous les champs obligatoires')),
      );
      return; // Arrêter l'exécution de la méthode
    }

    final formulaire = Formulaire(
      numeroPiece: numberPieceController.text,
      naturePiece: naturePieceController.text,
      prenom: firstNameController.text,
      nom: lastNameController.text,
      telephone: phoneController.text,
      telephone2: secondPhoneController.text,
      telephoneProche: prochePhoneController.text,
      dateNaissance: dateNaissanceController.text,
      situtaionMatrimoniale: situationMatrimoniale ?? '',
      sexe: sexe ?? '',
      niveauEtude: niveauEtude ?? '',
      region: region ?? '',
      ville: ville ?? '',
      localisation: localisation ?? '',
      createAt: DateTime.now(),
    );

    // Convertir l'objet Formulaire en Map<String, dynamic>
    Map<String, dynamic> formData = formulaire.toMap();

    // Insérer le formulaire dans la base de données
    await DatabaseHelper().insertFormData(formData);

    // Afficher un message de confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Formulaire soumis avec succès')),
    );

    /// Sélectionner et afficher le contenu de la table dans la console
    List<Map<String, dynamic>> rows = await DatabaseHelper().queryAllFormData();
    print('Contenu de la table form_data :');
    rows.forEach((row) {
      print(
        'ID: ${row['id']}, '
            'Numéro de pièce: ${row['numeroPiece']}, '
            'Nature de pièce: ${row['naturePiece']}, '
            'Prénom: ${row['prenom']}, '
            'Nom: ${row['nom']}, '
            'Téléphone: ${row['telephone']}, '
            'Deuxième téléphone: ${row['telephone2']}, '
            'Téléphone proche: ${row['telephoneProche']}, '
            'Date de naissance: ${row['dateNaissance']}, '
            'Situation matrimoniale: ${row['situationMatrimoniale']}, '
            'Sexe: ${row['sexe']}, '
            'Niveau d\'étude: ${row['niveauEtude']}, '
            'Région: ${row['region']}, '
            'Ville: ${row['ville']}, '
            'Localisation: ${row['localisation']}',
      );
    });

    // Retour à l'écran précédent après soumission
    Navigator.of(context).pop();
  }*/











  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Nouveau formulaire', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff8fc53c),
        centerTitle: true,
        elevation: 8,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  children: [
                    Expanded(
                         child: UIHelper.inputField(
                             controller: numberPieceController,
                             title: "Numéro de la pièce *"
                         )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: UIHelper.inputField(
                            controller: naturePieceController,
                            title: "Nature de la pièce *"
                        )
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: UIHelper.inputField(
                              controller: firstNameController,
                              title: "Prénom(s) *"
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: UIHelper.inputField(
                              controller: lastNameController,
                              title: "Nom *"
                          )
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                UIHelper.inputField(
                    controller: phoneController,
                    title: "Téléphone *"
                ),
                SizedBox(height: 10,),

                UIHelper.inputField(
                    controller: secondPhoneController,
                    title: "Deuxième téléphone"
                ),
                SizedBox(height: 10,),

                UIHelper.inputField(
                    controller: prochePhoneController,
                    title: "Téléphone proche"
                ),

                SizedBox(height: 10,),





                Row(
                  children: [
                    Expanded(
                      child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSelectedItems: true,
                          ),
                          items: const ["Masculin", "Feminin"],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5).w,
                                ),
                                labelText: "Sexe",
                                filled: true,
                                fillColor: Colors.grey[100],
                              )
                          ),
                          onChanged: (value) {
                            setState(() {
                              sexe = value;
                            });
                          }
                      ),
                    ),

                    SizedBox(width: 5,),

                    Expanded(
                      child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSelectedItems: true,
                          ),
                          items: const ["Marié", "Celibataire", "Veuve", "Veuf", "Divorcé"],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5).w,
                                ),
                                labelText: "Situation matrimoniale",
                                filled: true,
                                fillColor: Colors.grey[100],
                              )
                          ),
                          onChanged: (value) {
                            setState(() {
                              situationMatrimoniale = value;
                            });
                          }
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                DropdownSearch<String>(
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: const ["Primaire", "Collège", "Lycée", "Université", "Jamais"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5).w,
                          ),
                          labelText: "Niveau d'étude",
                          filled: true,
                          fillColor: Colors.grey[100],
                        )
                    ),
                    onChanged: (value) {
                      setState(() {
                        niveauEtude = value;
                      });
                    }
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownSearch<String>(
                            popupProps: const PopupProps.menu(
                              showSelectedItems: true,
                            ),
                            items: const ["Conakry", "Boké", "Kindia", "Mamou", "Labé", "Kankan", "Faranah", "N'Zerekoré"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5).w,
                                  ),
                                  labelText: "Région",
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                )
                            ),
                            onChanged: (value) {
                              setState(() {
                                region = value;
                              });
                            }
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: DropdownSearch<String>(
                            popupProps: const PopupProps.menu(
                              showSelectedItems: true,
                            ),
                            items: const ["Conakry", "Boké", "Boffa", "Kindia", "Mamou", "Pita", "Labé", "Dalaba", "Dabola", "Kouroussa", "Kankan", "Siguiri"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5).w,
                                  ),
                                  labelText: "Ville",
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                )
                            ),
                            onChanged: (value) {
                              setState(() {
                                ville = value;
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                UIHelper.inputField(
                    controller: locationController,
                    title: "Localisation géographique *"
                ),

                SizedBox(height: 20,),


                InkWell(
                  onTap: () async {
                    await _submitForm();
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff8fc53c),
                      borderRadius: BorderRadius.circular(50).w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Soumettre les informations', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  /*Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      HomeScreen(animationController: animationController);
                });
              });
            } else if (index == 1 || index == 3) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      TrainingScreen(animationController: animationController);
                });
              });
            }
          },
        ),
      ],
    );
  }*/
}
