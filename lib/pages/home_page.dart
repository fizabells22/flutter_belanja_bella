import 'package:flutter/material.dart';
import 'package:flutter_belanja_bella/models/item.dart';
import 'package:flutter_belanja_bella/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Pepper', price: 10000),
    Item(name: 'Oregano', price: 7500),
    Item(name: 'Onion', price: 10000),
  ];

  HomePage({Key? key}) : super(key: key);
  // throw UnimplementedError();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja App'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, ItemPage.routeName,
                    arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item.name),
                      ),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
