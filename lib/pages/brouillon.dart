import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/databaseHelpers.dart';
import 'new_form.dart';

class Brouillon extends StatefulWidget {
  const Brouillon({super.key});

  @override
  State<Brouillon> createState() => _BrouillonState();
}

void _showFormDataCount() async {
  int count = await DatabaseHelper().getFormDataCount();
  print('Nombre d\'éléments dans la table form_data : $count');
}

class _BrouillonState extends State<Brouillon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Brouillon', style: TextStyle(color: Colors.white)),
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
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return  NewForm();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  const CircleAvatar(
                        backgroundColor: Color(0xfff4f4f5),
                        radius: 18,
                        child: Icon(Icons.drafts, color: Color(0xff909399), size: 16,),
                      ),
                      title: const Text('Amadou Malal DIALLO', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: const Text('+224620844666/N°235648', style: TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            const Text("15 mai 2024 à 18h30", style: TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              const SizedBox(height: 5,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return  NewForm();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  const CircleAvatar(
                        backgroundColor: Color(0xfff4f4f5),
                        radius: 18,
                        child: Icon(Icons.drafts, color: Color(0xff909399), size: 16,),
                      ),
                      title: const Text('Aboubacar Sidiki Touré', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: const Text('+224620844666/N°235648', style: TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            const Text("15 mai 2024 à 18h30", style: TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              const SizedBox(height: 5,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return  NewForm();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  const CircleAvatar(
                        backgroundColor: Color(0xfff4f4f5),
                        radius: 18,
                        child: Icon(Icons.drafts, color: Color(0xff909399), size: 16,),
                      ),
                      title: const Text('Samba Kanté', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: const Text('+224620844666/N°235648', style: TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            const Text("15 mai 2024 à 18h30", style: TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              const SizedBox(height: 5,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return  NewForm();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  const CircleAvatar(
                        backgroundColor: Color(0xfff4f4f5),
                        radius: 18,
                        child: Icon(Icons.drafts, color: Color(0xff909399), size: 16,),
                      ),
                      title: const Text('Ousmane Bangoura', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: const Text('+224620844666/N°235648', style: TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            const Text("15 mai 2024 à 18h30", style: TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              const SizedBox(height: 5,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)).w,
                      color: const Color(0xfff9fbfa)
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return  NewForm();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  const CircleAvatar(
                        backgroundColor: Color(0xfff4f4f5),
                        radius: 18,
                        child: Icon(Icons.drafts, color: Color(0xff909399), size: 16,),
                      ),
                      title: const Text('Marine Abondance', style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: const Text('+224620844666/N°235648', style: TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            const Text("15 mai 2024 à 18h30", style: TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
