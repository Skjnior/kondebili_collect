import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail formulaire', style: TextStyle(color: Colors.white)),
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
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Numéro de la piéce', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('+224620844666', style: TextStyle(color: Colors.grey),),
                        )
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        // padding: EdgeInsets.symmetric(vertical: 13),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Nature de la pièce', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Passport', style: TextStyle(color: Colors.grey),),
                        )
                    )
                  )
                ]
              ),
              const SizedBox(height: 10,),
             Row(
               children: [
                 Expanded(
                   child: Container(
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                           color: const Color(0xfff9fbfa)
                       ),
                       child: const ListTile(
                         minLeadingWidth: 0,
                         title: Text('Prénom(s)', style: TextStyle(fontWeight: FontWeight.bold),),
                         subtitle: Text('Amadou Malal', style: TextStyle(color: Colors.grey),),
                       )
                   ),
                 ),
                 const SizedBox(width: 5,),
                 Expanded(
                   child: Container(
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                           color: const Color(0xfff9fbfa)
                       ),
                       child: const ListTile(
                         minLeadingWidth: 0,
                         title: Text('Nom', style: TextStyle(fontWeight: FontWeight.bold),),
                         subtitle: Text('DIALLO', style: TextStyle(color: Colors.grey),),
                       )
                   ),
                 ),
               ],
             ),
              const SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: const ListTile(
                      minLeadingWidth: 0,
                      title: Text('Téléphone', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666', style: TextStyle(color: Colors.grey),),
                  )
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Deuxième téléphone', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('610010203', style: TextStyle(color: Colors.grey),),
                        )
                    )
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Téléphone proche', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('620020104', style: TextStyle(color: Colors.grey),),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: const ListTile(
                    minLeadingWidth: 0,
                    title: Text('Date de naissance', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Conakry', style: TextStyle(color: Colors.grey),),
                  )
              ),
              const SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: const ListTile(
                    minLeadingWidth: 0,
                    title: Text('Situation matrimoniale', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Marié', style: TextStyle(color: Colors.grey),),
                  )
              ),
              const SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: const ListTile(
                    minLeadingWidth: 0,
                    title: Text('Niveau d\'étude', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Primaire', style: TextStyle(color: Colors.grey),),
                  )
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Région', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Boké', style: TextStyle(color: Colors.grey),),
                        )
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                            color: const Color(0xfff9fbfa)
                        ),
                        child: const ListTile(
                          minLeadingWidth: 0,
                          title: Text('Ville', style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Conakry', style: TextStyle(color: Colors.grey),),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: const ListTile(
                    minLeadingWidth: 0,
                    title: Text('Localisation géographique', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Wanindara', style: TextStyle(color: Colors.grey),),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}