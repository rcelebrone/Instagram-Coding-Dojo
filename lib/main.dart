import 'package:flutter/material.dart';
import 'Stories.dart';

void main() => runApp(
    MaterialApp(
      //home: Stories(),
      initialRoute: '/',
      routes: {
        '/': (context) => Stories(),
      },
      debugShowCheckedModeBanner: false,
      title: "Instagram Segredo",
      theme: ThemeData(
          primarySwatch: Colors.cyan
      )
    )
);

/*
*
void main() {
  runApp(MaterialApp(
    /* */
      home: Stories(),
      //debugShowCheckedModeBanner: false,
      title: "Instagram Segredo",
      theme: ThemeData(
          primarySwatch: MaterialColor(0xFB395800, {})
      )
  ));
}


* */

