import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: SvgPicture.asset('assets/Svg/Logo.svg'),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 10, top: 35),
                  height: 100,
                  width: 274,
                  child: Container(
                    padding: EdgeInsets.only(right: 40,bottom: 5),
                    child: Text(
                      "FAVORITES",
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff098256),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(
              right: 50,
            ),
            child: Text(
              'Here you see your liked plants :',
              style: GoogleFonts.sairaExtraCondensed(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  height: 166,
                  width: 166,
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(Icons.favorite,color: Color(0xffCE4545),size: 40,),
                        alignment: Alignment.topRight,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        alignment: Alignment.bottomCenter,
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
          )
        ],
      ),
    );
  }
}
