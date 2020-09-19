import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/payment.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:flutter/rendering.dart';
import 'package:estructura_practica_1/cart/cart.dart';

class GrainDetails extends StatefulWidget {
  final ProductGrains grain;
  GrainDetails({
    Key key,
    @required this.grain,
  }) : super(key: key);

  @override
  _GrainDetailsState createState() => _GrainDetailsState();
}

class _GrainDetailsState extends State<GrainDetails> {
  List<ProductItemCart> productList = new List<ProductItemCart>();

  @override
  void initState() {
    widget.grain.productAmount = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.grain.productTitle),
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
                      widget.grain.productImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    icon: Icon(Icons.favorite,
                        color: widget.grain.liked ? Colors.red : Colors.black),
                    onPressed: () => setState(() {
                      widget.grain.liked = !widget.grain.liked;
                    }),
                  ),
                ),
              ],
            ),
            Text(widget.grain.productTitle),
            Text(widget.grain.productDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Tamaños Disponibles'),
                Text(
                  '\$${widget.grain.productPrice}',
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
                    ++widget.grain.productAmount;
                    Navigator.of(context).pop(widget.grain);
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
