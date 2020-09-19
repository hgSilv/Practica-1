import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_dessert.dart';
import 'package:estructura_practica_1/desserts/item_desserts_details.dart';

class ItemDesserts extends StatefulWidget {
  final ProductDesserts dessert;
  ItemDesserts({
    Key key,
    @required this.dessert,
  }) : super(key: key);

  @override
  _ItemDessertsState createState() => _ItemDessertsState();
}

class _ItemDessertsState extends State<ItemDesserts> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _opendessertDetails(context),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Postres',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.dessert.productTitle}',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.dessert.productPrice}',
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Expanded(
                child: Container(
                  child: Image.network(widget.dessert.productImage),
                  width: 100,
                  height: 100,
                ),
                flex: 6),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: IconButton(
                  icon: Icon(Icons.favorite,
                      color: widget.dessert.liked ? Colors.red : Colors.grey),
                  onPressed: () {
                    setState(() {
                      widget.dessert.liked = !widget.dessert.liked;
                    });
                  },
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  _opendessertDetails(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (_) => DessertDetails(dessert: widget.dessert)))
        .then((value) {
      if (value != null) Navigator.of(context).pop(value);
    });
  }
}
