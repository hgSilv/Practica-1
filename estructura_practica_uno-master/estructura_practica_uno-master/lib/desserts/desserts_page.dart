import 'package:flutter/material.dart';
import 'package:estructura_practica_1/desserts/item_desserts.dart';
import 'package:estructura_practica_1/models/product_dessert.dart';

class DessertsPage extends StatefulWidget {
  final List<ProductDesserts> dessertsList;
  DessertsPage({
    Key key,
    @required this.dessertsList,
  }) : super(key: key);

  @override
  _DessertsPageState createState() => _DessertsPageState();
}

class _DessertsPageState extends State<DessertsPage> {
  ProductDesserts dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bebidas"),
      ),
      body: ListView.builder(
        itemCount: widget.dessertsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                return Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => ItemDesserts(dessert: dessert)))
                    .then((value) {
                  if (value != null) Navigator.of(context).pop(value);
                });
              },
              child: ItemDesserts(dessert: widget.dessertsList[index]));
        },
      ),
    );
  }
}
