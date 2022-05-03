import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/models/Plants.dart';

import '../Screens/PlantPage.dart';

class PlantsList extends StatefulWidget {
  final String plantType;

  const PlantsList({
    Key? key,
    required this.plantType,
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
                          child: Align(
                              child: Image.asset(
                            plants[index].plantImage,
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
                                      parent: animation,
                                      curve: Curves.bounceIn);
                                  return ScaleTransition(
                                    scale: animation,
                                    child: child,
                                    alignment: Alignment.center,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return PlantPage(
                                    index: index,
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
