import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantsList extends StatefulWidget {
  const PlantsList({Key? key}) : super(key: key);

  @override
  State<PlantsList> createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            height: 166,
            width: 166,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 178.7,
                  color: Colors.black38,
                  child: Center(
                      child: Text(
                    'PlantName',
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
