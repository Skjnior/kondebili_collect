import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kondebili_collect/detail.dart';

class Soumis extends StatefulWidget {
  const Soumis({super.key});

  @override
  State<Soumis> createState() => _SoumisState();
}

class _SoumisState extends State<Soumis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Information soumise', style: TextStyle(color: Colors.white)),
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
                              return Detail();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xfff0f9eb),
                        radius: 18,
                        child: Icon(Icons.done_all_outlined, color: Color(0xff67c23a), size: 16,),
                      ),
                      title: Text('Amadou Malal Diallo', style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666/N°235648', style: const TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            Text("15 mai 2024 à 18h30", style: const TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              SizedBox(height: 5,),
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
                              return Detail();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xfff0f9eb),
                        radius: 18,
                        child: Icon(Icons.done_all_outlined, color: Color(0xff67c23a), size: 16,),
                      ),
                      title: Text('Samba Kanté', style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666/N°235648', style: const TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            Text("15 mai 2024 à 18h30", style: const TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              SizedBox(height: 5,),
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
                              return Detail();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  CircleAvatar(
                        backgroundColor: const Color(0xfff0f9eb),
                        radius: 18,
                        child: Icon(Icons.done_all_outlined, color: Color(0xff67c23a), size: 16,),
                      ),
                      title: Text('Aboubacar Sidiki Touré', style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666/N°235648', style: const TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            Text("15 mai 2024 à 18h30", style: const TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              SizedBox(height: 5,),
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
                              return Detail();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  CircleAvatar(
                        backgroundColor: const Color(0xfff0f9eb),
                        radius: 18,
                        child: Icon(Icons.done_all_outlined, color: Color(0xff67c23a), size: 16,),
                      ),
                      title: Text('Ousmane Bangoura', style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666/N°235648', style: const TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            Text("15 mai 2024 à 18h30", style: const TextStyle(fontStyle: FontStyle.italic),)
                          ]
                      )
                  )
              ),
              SizedBox(height: 5,),
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
                              return Detail();
                            },
                                fullscreenDialog: true
                            ));
                      },
                      minLeadingWidth: 0,
                      // visualDensity: VisualDensity(vertical: 0),
                      leading:  CircleAvatar(
                        backgroundColor: const Color(0xfff0f9eb),
                        radius: 18,
                        child: Icon(Icons.done_all_outlined, color: Color(0xff67c23a), size: 16,),
                      ),
                      title: Text('Marine Abondance', style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('+224620844666/N°235648', style: const TextStyle(color: Colors.grey),),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Date et heure', style: TextStyle(fontWeight: FontWeight.w700),),
                            SizedBox(height: 3.h),
                            Text("15 mai 2024 à 18h30", style: const TextStyle(fontStyle: FontStyle.italic),)
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
