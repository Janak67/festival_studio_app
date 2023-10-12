import 'dart:io';
import 'dart:typed_data';

import 'package:festival_studio_app/Model/festivalModel.dart';
import 'package:festival_studio_app/Utills/app_color.dart';
import 'package:festival_studio_app/Utills/fontList.dart';
import 'package:festival_studio_app/Utills/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

import 'package:share_plus/share_plus.dart';

class FestivalEditScreen extends StatefulWidget {
  const FestivalEditScreen({super.key});

  @override
  State<FestivalEditScreen> createState() => _FestivalEditScreenState();
}

class _FestivalEditScreenState extends State<FestivalEditScreen> {
  int image = 0;
  int colorbgindex=0,fontcolor=2;
  int fontStyle = 0;
  bool italic = false;
  bool bold = false;
  bool isimageindex = true;
  double _value = 15;
  GlobalKey globalKey = GlobalKey();
  Alignment txtAlign = Alignment.center;

  @override
  Widget build(BuildContext context) {
   double h = MediaQuery.of(context).size.height*0.5;
   double w = MediaQuery.of(context).size.width;
    List<FestivalModel> l1 =
        ModalRoute.of(context)!.settings.arguments as List<FestivalModel>;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${Global.g1.festivalname}"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RepaintBoundary(
                key: globalKey,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: h, width: w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),color: colorbg[colorbgindex]),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: h, width: w,
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
                            child: Image.asset(
                              alignment: Alignment.center,
                              "${l1[image].image}",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: txtAlign,
                      height: h, width: w,
                      child: Text(
                        "${Global.g1.txtName.text}",
                        style:
                        TextStyle(fontSize: _value, color: colorbg[fontcolor],fontWeight: bold? FontWeight.bold:FontWeight.normal,
                          fontStyle: italic? FontStyle.italic:FontStyle.normal,fontFamily: fontList[fontStyle],),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Slider(value: _value,activeColor: Colors.white,
                      onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },divisions: 10,max: 50,min: 5,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: TextField(
                                          controller: Global.g1.txtName,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder()),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: const Text("OK"),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                });
                              },
                              icon: const Icon(
                                Icons.text_fields,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {setState(() {
                                if(colorbgindex< colorbg.length-1)
                                  {
                                    colorbgindex++;
                                  }
                                else{
                                  colorbgindex=0;
                                }
                              });},
                              icon: const Icon(
                                Icons.color_lens,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {setState(() {
                                if(fontcolor< colorbg.length-1)
                                {
                                  fontcolor++;
                                }
                                else{
                                  fontcolor=0;
                                }
                              });},
                              icon: const Icon(
                                Icons.format_color_text,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {setState(() {
                                bold = !bold;
                              });},
                              icon: const Icon(
                                Icons.format_bold_sharp,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {setState(() {
                                italic = !italic;
                              });},
                              icon: const Icon(
                                Icons.format_italic_sharp,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtAlign = Alignment.centerLeft;
                                });
                              },
                              icon: const Icon(
                                Icons.format_align_left,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtAlign = Alignment.center;
                                });
                              },
                              icon: const Icon(
                                Icons.format_align_center,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtAlign = Alignment.centerRight;
                                });
                              },
                              icon: const Icon(
                                Icons.format_align_right,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () async {
                                File file = await saveImage();
                                await Share.shareXFiles([XFile(file.path)]);
                              },
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {setState(() {
                                image = 0;
                                colorbgindex=0; fontcolor=2;
                                fontStyle = 0;
                                italic = false;
                                bold = false;
                                isimageindex = true;
                                _value = 15;
                                globalKey = GlobalKey();
                                txtAlign = Alignment.center;
                              });},
                              icon: const Icon(
                                Icons.lock_reset,
                                color: Colors.white,
                              )),
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
                    ),
                    SizedBox(height: 50,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: fontList.length,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: (){setState(() {
                        fontStyle = index;
                      });},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Hello",style: TextStyle(fontFamily: fontList[index],fontSize: 20,color: Colors.white),),
                        ),
                      );
                    },),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Future<dynamic> saveImage() async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

    return await File("/storage/emulated/0/Download/img1.png")
        .writeAsBytes(byteData!.buffer.asUint8List());
  }
}
