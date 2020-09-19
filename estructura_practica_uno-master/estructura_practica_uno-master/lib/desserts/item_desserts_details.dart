import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_dessert.dart';
import 'package:flutter/rendering.dart';
import 'package:estructura_practica_1/cart/cart.dart';
import 'package:estructura_practica_1/payment.dart';

class DessertDetails extends StatefulWidget {
  final ProductDesserts dessert;
  DessertDetails({
    Key key,
    @required this.dessert,
  }) : super(key: key);

  @override
  _DessertDetailsState createState() => _DessertDetailsState();
}

class _DessertDetailsState extends State<DessertDetails> {
  List<ProductItemCart> productList = new List<ProductItemCart>();

  @override
  void initState() {
    widget.dessert.productAmount = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dessert.productTitle),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration:
                      BoxDecoration(color: Theme.of(context).primaryColor),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.network(
                      widget.dessert.productImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    icon: Icon(Icons.favorite,
                        color:
                            widget.dessert.liked ? Colors.red : Colors.black),
                    onPressed: () => setState(() {
                      widget.dessert.liked = !widget.dessert.liked;
                    }),
                  ),
                ),
              ],
            ),
            Text(widget.dessert.productTitle),
            Text(widget.dessert.productDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Tamaños Disponibles'),
                Text(
                  '\$${widget.dessert.productPrice}',
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Chip(label: Text('Chico')),
                const SizedBox(width: 30),
                Chip(label: Text('Mediano')),
                const SizedBox(width: 30),
                Chip(
                  label: Text('Grande'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Agregar al carrito'),
                  onPressed: () {
                    ++widget.dessert.productAmount;
                    Navigator.of(context).pop(widget.dessert);
                  },
                ),
                const SizedBox(width: 30),
                RaisedButton(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Comprar ahora'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Payment();
                    }));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
