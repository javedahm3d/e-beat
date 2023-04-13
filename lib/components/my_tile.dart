import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myTile(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
      color: Color.fromARGB(106, 191, 237, 138),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Color.fromARGB(255, 195, 253, 128)),
    ),
    child: Center(
      child: ListTile(
        leading: Icon(
          Icons.location_pin,
          size: 40,
        ),
        title: Text(
          'location name',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        subtitle: Text('more info if needed'),
      ),
    ),
  );
}
