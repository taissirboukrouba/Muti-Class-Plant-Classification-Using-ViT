import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/models/Plants.dart';

class PlantsList extends StatefulWidget {
  final String plantType;

  final int index;

  const PlantsList({
    Key? key,
    required this.plantType,
    required int this.index,
  }) : super(key: key);

  @override
  State<PlantsList> createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 240,
            child: Row(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      height: 200,
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          color: Color(0xff098256),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      height: 400,
                      margin: EdgeInsets.only(bottom: 40),
                      child: Align(child: Image.asset(plants[index].plantImage,scale: 0.5,fit:BoxFit.fitHeight,height: 400,)),)
                  ],
                )),
                Expanded(
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
                            plants[index].plantType,
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
                            plants[index].plantName,
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff098256),
                            ),
                          )),
                    ],
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
