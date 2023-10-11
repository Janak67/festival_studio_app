import 'package:festival_studio_app/Model/festivalModel.dart';
import 'package:festival_studio_app/Utills/global.dart';
import 'package:flutter/material.dart';

class FestivalEditScreen extends StatefulWidget {
  const FestivalEditScreen({super.key});

  @override
  State<FestivalEditScreen> createState() => _FestivalEditScreenState();
}

class _FestivalEditScreenState extends State<FestivalEditScreen> {
  int image = 0;
  bool isimageindex = true;

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
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Visibility(
                    visible: isimageindex,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isimageindex = false;
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(alignment: Alignment.center,
                          "${l1[image].image}",
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: l1.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(7),
                          height: 120,
                          width: 100,
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  isimageindex = true;
                                  image = index;
                                });
                              },
                              child: Image.asset(
                                "${l1[index].image}",
                                fit: BoxFit.cover,
                                height: 120,
                                width: 100,
                              )),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
