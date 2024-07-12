import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../models/databaseHelpers.dart';
import 'detail.dart';

class Attente extends StatefulWidget {
  const Attente({Key? key}) : super(key: key);

  @override
  State<Attente> createState() => _AttenteState();
}

class _AttenteState extends State<Attente> {
  late Future<List<Map<String, dynamic>>> _formDataList;

  @override
  void initState() {
    super.initState();
    _formDataList = _getAllFormData();
  }




  Future<List<Map<String, dynamic>>> _getAllFormData() async {
    return await DatabaseHelper().getAllFormData();
  }



  /// Ma méthode pour supprimer
  void _deleteForm(int id) async {
    print('Trying to delete form with ID: $id'); // Vérifiez l'ID envoyé
    DatabaseHelper dbHelper = DatabaseHelper();
    int result = await dbHelper.deleteFormData(id);

    if (result != 0) {
      // Succès
      print('Formulaire supprimé avec succès');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulaire supprimé avec succès')),
      );
      setState(() {
        _formDataList = _getAllFormData();
      });
    } else {
      // Échec
      print('Erreur lors de la suppression du formulaire');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur lors de la suppression du formulaire')),
      );
    }
  }



/// Ma méthode pour formater la date
  String _formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
  }










  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('En attente de soumission', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff8fc53c),
        centerTitle: true,
        elevation: 8,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _formDataList,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Erreur : ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('Aucune donnée disponible.'));
            } else {
              List<Map<String, dynamic>> formDataList = snapshot.data!;

              return ListView.builder(
                itemCount: formDataList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> formData = formDataList[index];

                  return GestureDetector(
                    onLongPress: () =>   showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Confirmation'),
                          content: const Text('Voulez-vous vraiment supprimer ce formulaire ?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Ferme le dialogue
                              },
                              child: const Text(
                                'Annuler',

                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                _deleteForm(formData['id']);
                              },
                              child: const Text(
                                'Oui',
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xfff9fbfa),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Detail(formData: formData);
                            }),
                          );
                        },
                        minLeadingWidth: 0,
                        leading: const CircleAvatar(
                          backgroundColor: Color(0xfffdf6ec),
                          radius: 18,
                          child: Icon(Icons.upload, color: Color(0xffe6a23c), size: 16,),
                        ),
                        title: Text(
                          '${formData['prenom']} ${formData['nom']}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '+${formData['telephone']} / N°${formData['numeroPiece']}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700)),
                            SizedBox(height: 3.0), // Utilisez une valeur fixe ici
                            formData['createAt'] != null
                                ? Text(
                              _formatDateTime(formData['createAt']),
                              style: const TextStyle(fontStyle: FontStyle.italic),
                            )
                                : const Text(
                              'Date non spécifiée',
                              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

