import 'package:e_beat/colors.dart';
import 'package:e_beat/components/grid_tile.dart';
import 'package:e_beat/components/my_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_lite,
        // appBar: AppBar(
        //   backgroundColor: bg_lite,
        //   elevation: 0,
        // ),
        body: SafeArea(
          bottom: false,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //upper body
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'police name',
                            style: GoogleFonts.roboto(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rank',
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'police station',
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2021/07/singham-1626948744.jpg'),
                        radius: 40,
                      )
                    ],
                  ),
                ),
              ),

              // lower body
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Column(
                    children: [
                      //quick access tab
                      Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 15)
                                  .copyWith(bottom: 20),
                          padding: EdgeInsets.all(12),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(30)),
                          child: GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            childAspectRatio: 1.5,
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            children: [
                              myGridTile(),
                              myGridTile(),
                              myGridTile(),
                              myGridTile(),
                              myGridTile(),
                              myGridTile(),
                            ],
                          )),

                      // police stations list

                      Expanded(
                          child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return myTile(context);
                        },
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
