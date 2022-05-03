import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Screens/OtherPlantsPage.dart';

import '../models/Plants.dart';

class otherPlantsList extends StatefulWidget {
  final String plantType;

  const otherPlantsList({Key? key, required this.plantType}) : super(key: key);

  @override
  State<otherPlantsList> createState() => _otherPlantsListState();
}

class _otherPlantsListState extends State<otherPlantsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        myFunction() {
          if (widget.plantType == 'Indoor') {
            return Indoor[index].plantName;
          }
          if (widget.plantType == 'Flowers') {
            return Flowers[index].plantName;
          }
          if (widget.plantType == 'Outdoor') {
            return Outdoor[index].plantName;
          }
        }

        myFunction2() {
          if (widget.plantType == 'Indoor') {
            return Indoor[index].plantImage;
          }
          if (widget.plantType == 'Flowers') {
            return Flowers[index].plantImage;
          }
          if (widget.plantType == 'Outdoor') {
            return Outdoor[index].plantImage;
          }
        }

        return Column(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 240,
            child: Row(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          color: Color(0xff098256),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      height: 400,
                      margin: EdgeInsets.only(bottom: 40),
                      child: Align(
                          child: Image.asset(
                        myFunction2().toString(),
                        scale: 0.5,
                        fit: BoxFit.fitHeight,
                        height: 400,
                      )),
                    )
                  ],
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 100),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation, curve: Curves.bounceIn);
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                                alignment: Alignment.center,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return OtherPlantsPage(
                                index: index, plantType: widget.plantType,
                              );
                            }));
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 10,
                            left: 150,
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xff098256),
                            )),
                        Positioned(
                            top: 20,
                            left: 10,
                            child: Text(
                              widget.plantType,
                              style: GoogleFonts.sairaExtraCondensed(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff098256),
                              ),
                            )),
                        Positioned(
                            top: 70,
                            left: 10,
                            child: Text(
                              myFunction().toString(),
                              style: GoogleFonts.sairaExtraCondensed(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff098256),
                              ),
                            )),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ]);
      },
    );
  }
}
