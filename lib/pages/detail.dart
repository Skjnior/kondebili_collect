import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Detail extends StatefulWidget {
  final Map<String, dynamic> formData;

  const Detail({Key? key, required this.formData}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Détail formulaire', style: TextStyle(color: Colors.white)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Numéro de la pièce', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['numeroPiece'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Nature de la pièce', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['naturePiece'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Prénom(s)', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['prenom'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Nom', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['nom'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Téléphone', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.formData['telephone'] ?? '', style: const TextStyle(color: Colors.grey)),
                  )
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Deuxième téléphone', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['telephone2'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Téléphone proche', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['telephoneProche'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Date de naissance', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.formData['dateNaissance'] ?? '', style: const TextStyle(color: Colors.grey)),
                  )
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Situation matrimoniale', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.formData['situationMatrimoniale'] ?? '', style: const TextStyle(color: Colors.grey)),
                  )
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Niveau d\'étude', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.formData['niveauEtude'] ?? '', style: const TextStyle(color: Colors.grey)),
                  )
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Région', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['region'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)).w,
                          color: const Color(0xfff9fbfa),
                        ),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: const Text('Ville', style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(widget.formData['ville'] ?? '', style: const TextStyle(color: Colors.grey)),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Localisation géographique', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.formData['localisation'] ?? '', style: const TextStyle(color: Colors.grey)),
                  )
              ),
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)).w,
                    color: const Color(0xfff9fbfa),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    title: const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      _formatDateTime(widget.formData['createAt']),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
  }
}
