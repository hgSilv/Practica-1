import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:estructura_practica_1/drinks/item_hot_drinks_details.dart';

class ItemHotDrinks extends StatefulWidget {
  final ProductHotDrinks drink;
  ItemHotDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemHotDrinksState createState() => _ItemHotDrinksState();
}

class _ItemHotDrinksState extends State<ItemHotDrinks> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openDrinkDetails(context),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Bebidas Calientes',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.drink.productTitle}',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.drink.productPrice}',
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Expanded(
                child: Container(
                  child: Image.network(widget.drink.productImage),
                  width: 100,
                  height: 100,
                ),
                flex: 6),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: IconButton(
                  icon: Icon(Icons.favorite,
                      color: widget.drink.liked ? Colors.red : Colors.grey),
                  onPressed: () {
                    setState(() {
                      widget.drink.liked = !widget.drink.liked;
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

  _openDrinkDetails(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (_) => DrinkDetails(drink: widget.drink)))
        .then((value) {
      if (value != null) Navigator.of(context).pop(value);
    });
  }
}
