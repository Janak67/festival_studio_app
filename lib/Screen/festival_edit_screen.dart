import 'package:festival_studio_app/Model/festivalModel.dart';
import 'package:festival_studio_app/Utills/global.dart';
import 'package:flutter/material.dart';

class FestivalEditScreen extends StatefulWidget {
  const FestivalEditScreen({super.key});

  @override
  State<FestivalEditScreen> createState() => _FestivalEditScreenState();
}

class _FestivalEditScreenState extends State<FestivalEditScreen> {

  @override
  Widget build(BuildContext context) {
    List<FestivalModel> l1 =
        ModalRoute.of(context)!.settings.arguments as List<FestivalModel>;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${Global.g1.festivalname}"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.grey),

            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.color_lens,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.9,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: l1.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                        child: Image.asset("${l1[index].image}",fit: BoxFit.cover,),
                      );
                    },
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
