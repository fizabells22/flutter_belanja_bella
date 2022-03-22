import 'package:flutter/material.dart';
import 'package:flutter_belanja_bella/pages/home_page.dart';
import 'package:flutter_belanja_bella/pages/item_page.dart';
import 'package:flutter_belanja_bella/models/item.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      ItemPage.routeName: (context) => const ItemPage(),
      '/': (context) => HomePage(),
      // '/item': (context) => ItemPage(),
    },
  ));
}
