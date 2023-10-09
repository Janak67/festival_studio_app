import 'package:festival_studio_app/Model/categoryModel.dart';
import 'package:festival_studio_app/Model/festivalModel.dart';
import 'package:festival_studio_app/Utills/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    Global.g1.imageList.map((e) {
      FestivalModel f1 = FestivalModel.fromMap(e);

      Global.g1.modelList.add(f1);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Festival Studio",
                style: GoogleFonts.imFellFrenchCanonSc(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 200),
              itemCount: Global.g1.festivalList.length,
              padding: const EdgeInsets.all(5),
              itemBuilder: (context, index) {
                return festivalTile(Global.g1.festivalList[index]);
              },
            )));
  }

  Row festivalTile(CategoryModel f1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  List<FestivalModel>l1=[];
                  Global.g1.festivalname=f1.name;
                  for(var x in Global.g1.modelList){
                    if(x.name==f1.name){
                      l1.add(x);
                    }
                  }
                  Navigator.pushNamed(context, 'edit',arguments: l1);},
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 75,
                  child: Image.asset(
                    "${f1.image}",
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Text("${f1.name}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.domine(fontSize: 19))
            ],
          ),
        ),
      ],
    );
  }
}
