import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kondebili_collect/attente.dart';
import 'package:kondebili_collect/brouillon.dart';
import 'package:kondebili_collect/new_form.dart';
import 'package:kondebili_collect/soumis.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
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
        body: Center(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 150.0.h,
                        child: Image.asset('assets/logos/kondebili.png', fit: BoxFit.cover)
                    ),
                    SizedBox(height: 25.h),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const NewForm();
                              },
                                  fullscreenDialog: true
                              ));
                        },
                        child: Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50).w
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: Colors.white,),
                                Text('Nouveau formulaire', style: TextStyle(color: Colors.white),)
                              ],
                            )
                        )
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const Brouillon();
                              },
                                  fullscreenDialog: true
                              ));
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
                                ) ,
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.drafts),
                                      SizedBox(width: 5,),
                                      Text("Brouillon")
                                    ],
                                  ),
                                  Text("5")
                                ],
                              ),
                            )
                        )
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const Attente();
                              },
                                  fullscreenDialog: true
                              ));
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
                                ) ,
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.schedule_send_sharp),
                                      SizedBox(width: 5,),
                                      Text("En attente de soumission")
                                    ],
                                  ),
                                  Text("17")
                                ],
                              ),
                            )
                        )
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const Soumis();
                              },
                                  fullscreenDialog: true
                              ));
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
                                ) ,
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.done_all_outlined),
                                      SizedBox(width: 5,),
                                      Text("Soumis")
                                    ],
                                  ),
                                  Text("5")
                                ],
                              ),
                            )
                        )
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
                                ) ,
                              ],

                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.download),
                                      SizedBox(width: 5,),
                                      Text("Télécharger le formulaire")
                                    ],
                                  ),
                                ],
                              ),
                            )
                        )
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
                                ) ,
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.delete),
                                      SizedBox(width: 5,),
                                      Text("Supprimer le formulaire")
                                    ],
                                  ),
                                ],
                              ),
                            )
                        )
                    ),

                  ],
                ),
              ),
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
