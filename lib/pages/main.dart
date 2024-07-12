import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/databaseHelpers.dart';
import 'dashboard.dart';



void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  /// Initialiser la base de données
  await initializeDatabase();

  final database = openDatabase(
    join(await getDatabasesPath(), 'formulaire_database.db'),
  );

  runApp(const MyApp());
}


/// Méthode pour initialiser et créer la table
Future<void> initializeDatabase() async {

  /// Supprimer la base de données existante
/*  String path = join(await getDatabasesPath(), 'formulaire_database.db');
  await deleteDatabase(path);*
  print('Database deleted: $path');
 */
  /// Initialiser la nouvelle base de données
  await DatabaseHelper().database;
  print('Database initialized'); // Log pour vérifier que la base de données est initialisée
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Kodebili Collecte",
            theme: ThemeData(
                dividerColor: Colors.transparent,
                textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 13.sp)),
                scaffoldBackgroundColor: const Color(0xffeaf0ee),
                pageTransitionsTheme: const PageTransitionsTheme(
                    builders: {
                      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
                      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                    }
                )
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark
            ),
            themeMode: ThemeMode.system,
            home: const Dashboard(),
          );
        }
    );
  }
}

/*class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future userFuture;

  @override
  void initState() {
    super.initState();

    userFuture = _getUserInfo();
  }

  _getUserInfo() async {
    //return await  UserPreferences().getUser();
  }

  @override
  Widget build(context) {

    return FutureBuilder(
        future: userFuture,
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                    child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          valueColor:AlwaysStoppedAnimation<Color>(AppConfig.baseAppColor),
                        )
                    )
                )
            );
          } else {
            if (snapshot.error != null) {
              return const Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                      child: Text("Erreur lors du chargement", style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),)
                  )
              );
            } else {
              if (snapshot.hasData) {
                return Pin(snapshot.data);
              } else {
                return const OnBoardingScreen();
              }
            }
            /* switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            default:
              if (snapshot.hasError) {
                return Text('Erreur: ${snapshot.error}');
              } else if (snapshot.data == null) {
                return const OnBoardingScreen();
              } else if (snapshot.data != null) {
                return Pin(snapshot.data);
              } else {
                return const OnBoardingScreen();
              }
          }*/
          }
        }
    );
  }
}*/
