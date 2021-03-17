import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/item_page.dart';
import 'Item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Ventela', price: 255000, image: Image.network('https://ecs7.tokopedia.net/img/cache/700/product-1/2019/7/26/511283874/511283874_c820c1fd-1654-40df-8bc0-f0a6b37492b5_700_700.jpg')),
    Item(name: 'Tom Kinds', price: 445000, image: Image.network('https://ecs7.tokopedia.net/img/cache/700/product-1/2019/6/14/64479420/64479420_35996535-2c45-4a4e-8234-cae1a13dd728_938_938.jpg')),
    Item(name: 'Converse', price: 700000, image: Image.network('https://cf.shopee.co.id/file/ebb1ecc141502d592f493b56218df4e4')),
    Item(name: 'Vans', price: 200000, image: Image.network('https://ecs7.tokopedia.net/img/cache/700/product-1/2019/5/28/6042824/6042824_143e7a0e-f7e8-4e6d-8da0-7afcc4ddcc01_1035_1035.jpg')),
    Item(name: 'Adidas', price: 235000, image: Image.network('https://s0.bukalapak.com/img/53971606541/large/data.png'))
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Shoes Shopping List"),
            ),
            backgroundColor: Colors.yellow.shade100,
            body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPage(newItem: item)));
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Text(item.name)),
                              Expanded(
                                  child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
        )
     );
  }
}
