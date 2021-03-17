import 'package:flutter/material.dart';
import 'package:flutter_shopping/Item.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;

  ItemPage({
    Key key, this.newItem,
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text("Detail Gambar"),
          centerTitle: true,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: newItem.image),
            Container(
              alignment: Alignment.center,
              child: Text(
                newItem.name + ": Rp. " + newItem.price.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
      ),
          ],
        ),
    );
  }
}