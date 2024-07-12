import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kondebili_collect/pages/attente.dart';
import 'package:kondebili_collect/pages/brouillon.dart';
import 'package:kondebili_collect/pages/soumis.dart';

import '../models/databaseHelpers.dart';
import 'new_form.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  int nombreSoumissions = 0;

  @override
  void initState() {
    super.initState();
    initialization();
    _showFormDataCount();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  void _showFormDataCount() async {
    int nombre = await DatabaseHelper().getFormDataCount();
    setState(() {
      nombreSoumissions = nombre;
    });
    print('Nombre d\'éléments dans la table infos_personnes : $nombreSoumissions');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('KONDEBILI COLLECTE', style: TextStyle(color: Colors.white)),
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150.0.h,
                  child: Image.asset('assets/logos/kondebili.png', fit: BoxFit.cover),
                ),
                SizedBox(height: 25.h),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return  NewForm();
                    }));
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50).w,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white,),
                        Text('Nouveau formulaire', style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Brouillon();
                      }),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20).w,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.drafts, color: Colors.black,),
                              SizedBox(width: 5,),
                              Text("Brouillon", style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Text(
                           "5", style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Attente();
                      }),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20).w,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.schedule_send_sharp, color: Colors.black),
                              SizedBox(width: 5,),
                              Text("En attente de soumission", style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Text(nombreSoumissions.toString(), style: TextStyle(
                            color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Soumis();
                      }),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20).w,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.done_all_outlined, color: Colors.black),
                              SizedBox(width: 5,),
                              Text("Soumis", style: TextStyle(color: Colors.black),),
                            ],
                          ),
                          Text("5", style: TextStyle(color: Colors.black),), // Ici, vous pouvez afficher le nombre de formulaires soumis
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20).w,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.download, color: Colors.black),
                              SizedBox(width: 5,),
                              Text("Télécharger le formulaire", style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20).w,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.delete, color: Colors.black),
                              SizedBox(width: 5,),
                              Text("Supprimer le formulaire", style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
