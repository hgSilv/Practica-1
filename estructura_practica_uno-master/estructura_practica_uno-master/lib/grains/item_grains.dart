import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:estructura_practica_1/grains/item_grains_details.dart';

class ItemGrains extends StatefulWidget {
  final ProductGrains grain;
  ItemGrains({
    Key key,
    @required this.grain,
  }) : super(key: key);

  @override
  _ItemGrainsState createState() => _ItemGrainsState();
}

class _ItemGrainsState extends State<ItemGrains> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _opengrainDetails(context),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Cafe en Grano',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.grain.productTitle}',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '${widget.grain.productPrice}',
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Expanded(
                child: Container(
                  child: Image.network(widget.grain.productImage),
                  width: 100,
                  height: 100,
                ),
                flex: 6),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: IconButton(
                  icon: Icon(Icons.favorite,
                      color: widget.grain.liked ? Colors.red : Colors.grey),
                  onPressed: () {
                    setState(() {
                      widget.grain.liked = !widget.grain.liked;
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

  _opengrainDetails(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (_) => GrainDetails(grain: widget.grain)))
        .then((value) {
      if (value != null) Navigator.of(context).pop(value);
    });
  }
}
