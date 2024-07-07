import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kondebili_collect/widgets/ui_helpers.dart';

class NewForm extends StatefulWidget {
  const NewForm({super.key});

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> with TickerProviderStateMixin {

  TextEditingController firstNameController = TextEditingController();

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
                    Expanded(child: UIHelper.inputField(controller: firstNameController, title: "Numéro de la pièce *")),
                    SizedBox(width: 10,),
                    Expanded(child: UIHelper.inputField(controller: firstNameController, title: "Nature de la pièce *")),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      Expanded(child: UIHelper.inputField(controller: firstNameController, title: "Prénom(s) *")),
                      SizedBox(width: 10,),
                      Expanded(child: UIHelper.inputField(controller: firstNameController, title: "Nom *")),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                UIHelper.inputField(controller: firstNameController, title: "Téléphone *"),
                SizedBox(height: 10,),
                UIHelper.inputField(controller: firstNameController, title: "Deuxième téléphone"),
                SizedBox(height: 10,),
                UIHelper.inputField(controller: firstNameController, title: "Téléphone proche"),

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
                              //duree = value;
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
                              //duree = value;
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
                        //duree = value;
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
                                //duree = value;
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
                                //duree = value;
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                UIHelper.inputField(controller: firstNameController, title: "Localisation géographique *"),
                SizedBox(height: 20,),

                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return NewForm();
                          },
                              fullscreenDialog: true
                          ));
                    },
                    child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: const Color(0xff8fc53c),
                            borderRadius: BorderRadius.circular(50).w
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.send, color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('Soumettre les informations', style: TextStyle(color: Colors.white),)
                          ],
                        )
                    )
                ),

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
