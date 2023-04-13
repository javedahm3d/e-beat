import 'package:flutter/material.dart';

myGridTile() {
  return Container(
    child: Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
        Text('scan QR')
      ],
    ),
  );
}
