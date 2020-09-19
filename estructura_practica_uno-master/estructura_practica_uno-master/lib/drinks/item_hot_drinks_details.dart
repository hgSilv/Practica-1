import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:estructura_practica_1/payment.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:flutter/rendering.dart';
import 'package:estructura_practica_1/cart/cart.dart';

class DrinkDetails extends StatefulWidget {
  final ProductHotDrinks drink;
  DrinkDetails({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _DrinkDetailsState createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  List<ProductItemCart> productList = new List<ProductItemCart>();

  @override
  void initState() {
    widget.drink.productAmount = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.productTitle),
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
                      widget.drink.productImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    icon: Icon(Icons.favorite,
                        color: widget.drink.liked ? Colors.red : Colors.black),
                    onPressed: () => setState(() {
                      widget.drink.liked = !widget.drink.liked;
                    }),
                  ),
                ),
              ],
            ),
            Text(widget.drink.productTitle),
            Text(widget.drink.productDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Tamaños Disponibles'),
                Text(
                  '${widget.drink.productPrice}',
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
                    ++widget.drink.productAmount;
                    Navigator.of(context).pop(widget.drink);
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
