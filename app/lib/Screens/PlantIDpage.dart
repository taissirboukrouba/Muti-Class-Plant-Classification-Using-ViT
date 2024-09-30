import 'dart:io';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Screens/DetectionPage.dart';
import 'package:tflite/tflite.dart';

class PlantIDpage extends StatefulWidget {
  PlantIDpage({Key? key}) : super(key: key);

  @override
  State<PlantIDpage> createState() => _PlantIDpageState();
}

class _PlantIDpageState extends State<PlantIDpage> {
  Future pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
    setState(() {
      Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.elasticInOut);
                return ScaleTransition(
                  scale: animation,
                  child: child,
                  alignment: Alignment.center,
                );
              },
              pageBuilder: (context, animation, animationTime) {
                return DetectionPage(
                  ImageSelected: imageSelect,
                  image: image,
                  result: MyFun(),
                );
              }));
    });
  }

  Future pickCamera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
    setState(() {
      Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.elasticInOut);
                return ScaleTransition(
                  scale: animation,
                  child: child,
                  alignment: Alignment.center,
                );
              },
              pageBuilder: (context, animation, animationTime) {
                return DetectionPage(
                  ImageSelected: imageSelect,
                  image: image,
                  result: MyFun(),
                );
              }));
    });
  }

  late File _image;
  late List _results;
  bool imageSelect = false;
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/MyModel.tflite", labels: "assets/MyLabels.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 1,
      threshold: 0.05,
      imageMean: 0.0,
      imageStd: 255.0,
    );
    setState(() {
      _results = recognitions!;
      _image = image;
      imageSelect = true;
    });
  }

  MyFun() {
    String? k;
    (imageSelect)
        ? _results.map((result) {
            k = "${result['label']}";
          })
        : k = "null";
    return k;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    width: 100,
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Lottie.asset(
                      'assets/Svg/animation.json',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 46,
                  width: 300,
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        "PLANT IDENTIFICATION",
                        style: GoogleFonts.sairaExtraCondensed(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff098256),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Icon(
            Icons.report,
            color: Color(0xffCE4545),
            size: 40,
          )),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffCE4545),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(7.5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFAFAFA),
              ),
              alignment: Alignment.center,
              width: 350,
              height: 120,
              child: Center(
                child: Text(
                  "MAKE SURE TO TAKE YOUR PICTURES CORRECTLY \n(VISIT THE TIPS PAGE TO KNOW MORE) ",
                  style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff0D553E),
              ),
              height: 100,
              width: 320,
              child: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff098256),
                    ),
                    child: InkWell(
                      onTap: pickImage,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.image,
                              size: 30,
                              color: Color(0xff0D553E),
                            ),
                          ),
                          InkWell(
                            onTap: pickImage,
                            child: Container(
                                margin: EdgeInsets.only(left: 90),
                                child: Text(
                                  "GALLERY",
                                  style: GoogleFonts.sairaExtraCondensed(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff0D553E)),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff0D553E),
              ),
              height: 100,
              width: 320,
              child: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff098256),
                    ),
                    child: InkWell(
                      onTap: pickCamera,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.camera_enhance,
                              size: 30,
                              color: Color(0xff0D553E),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Text(
                                "CAMERA",
                                style: GoogleFonts.sairaExtraCondensed(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0D553E)),
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
