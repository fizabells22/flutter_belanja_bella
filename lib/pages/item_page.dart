import 'package:flutter/material.dart';
import 'package:flutter_belanja_bella/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/id/102/300/300'),
            const SizedBox(height: 15),
            Text(itemArgs.name + ' with ' + itemArgs.price.toString()),
          ],
        ),
      ),
    );
  }
}
