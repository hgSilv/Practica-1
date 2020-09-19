import 'package:flutter/material.dart';
import 'package:estructura_practica_1/grains/item_grains.dart';
import 'package:estructura_practica_1/models/product_grains.dart';

class GrainsPage extends StatefulWidget {
  final List<ProductGrains> grainsList;
  GrainsPage({
    Key key,
    @required this.grainsList,
  }) : super(key: key);

  @override
  _GrainsPageState createState() => _GrainsPageState();
}

class _GrainsPageState extends State<GrainsPage> {
  ProductGrains grain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bebidas"),
      ),
      body: ListView.builder(
        itemCount: widget.grainsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                return Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => ItemGrains(grain: grain)))
                    .then((value) {
                  if (value != null) Navigator.of(context).pop(value);
                });
              },
              child: ItemGrains(grain: widget.grainsList[index]));
        },
      ),
    );
  }
}
