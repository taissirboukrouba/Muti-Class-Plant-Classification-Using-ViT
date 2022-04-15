import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      extendBody: true,
      body:Column(
          children: [
            SizedBox(height: 20,),
            /*------------------------------ upper part -------------------*/
            Container(
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 100,
              
                    
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Lottie.asset('assets/Svg/animation.json',fit: BoxFit.fill),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 46,
                    width: 274,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFAFAFA),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            child: SvgPicture.asset(
                              'assets/Svg/Search.svg',
                              width: 30,
                              fit: BoxFit.fill,
                            )),
                        Container(
                          padding: EdgeInsets.only(right: 75),
                          child: Text(
                            'Search plants',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.saira(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffC4C4C4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*--------------------------------------------------------------------------*/
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "HOME",
                textAlign: TextAlign.left,
                style: GoogleFonts.sairaExtraCondensed(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff098256),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Flexible(
              child: Container(
                  color: Colors.transparent,
                  height: 70,

                  
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*------------- All --------------------*/
                          Flexible(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'All',
                                style: GoogleFonts.sairaExtraCondensed(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          /*------------- Popular --------------------*/

                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Popular',
                              style: GoogleFonts.sairaExtraCondensed(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          /*------------- Indoor --------------------*/
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Indoor',
                              style: GoogleFonts.sairaExtraCondensed(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          /*------------- Flowers --------------------*/

                          TextButton(
                            style: ButtonStyle(),
                            onPressed: () {},
                            child: Text(
                              'Flowers',
                              style: GoogleFonts.sairaExtraCondensed(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 7,
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
            ),
        
          ],
        ),
      
    );
  }
}
