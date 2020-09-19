import 'package:estructura_practica_1/desserts/desserts_page.dart';
import 'package:estructura_practica_1/grains/grains_page.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:estructura_practica_1/utils/constants.dart';
import 'package:estructura_practica_1/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/home/item_home.dart';
import 'package:estructura_practica_1/profile.dart';

import '../drinks/hot_drinks_page.dart';
import '../models/product_repository.dart';
import '../models/product_repository.dart';
import '../models/product_repository.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _scaffoldkey = GlobalKey<ScaffoldState>();
  List<ProductItemCart> productsList = new List<ProductItemCart>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: _openCartPage,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _openHotDrinksPage,
            child: ItemHome(
              title: "Bebidas calientes",
              image: "https://i.imgur.com/XJ0y9qs.png",
            ),
          ),
          GestureDetector(
            onTap: _openGrainsPage,
            child: ItemHome(
              title: "Granos",
              image: "https://i.imgur.com/5MZocC1.png",
            ),
          ),
          GestureDetector(
            onTap: _openDessertPage,
            child: ItemHome(
              title: "Postres",
              image: "https://i.imgur.com/fI7Tezv.png",
            ),
          ),
          GestureDetector(
            onTap: _showSnackBar,
            child: ItemHome(
              // TODO: Al hacer clic, que muestre un snackbar de "Proximamente"
              title: "Tazas",
              image: "https://i.imgur.com/fMjtSpy.png",
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 150,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        PROFILE_PICTURE,
                      ),
                      minRadius: 40,
                      maxRadius: 80,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    PROFILE_NAME,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(PROFILE_EMAIL),
                  SizedBox(
                    height: 16,
                  ),
                  ListTile(
                    title: Text(PROFILE_CART),
                    leading: Icon(Icons.shopping_cart),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(PROFILE_WISHES),
                    leading: Icon(Icons.thumb_up),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(PROFILE_HISTORY),
                    leading: Icon(Icons.store),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(PROFILE_SETTINGS),
                    leading: Icon(Icons.settings),
                    onTap: () {},
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text(PROFILE_LOGOUT),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openHotDrinksPage() {
    // TODO: completar en navigator pasando los parametros a la pagina de HotDrinksPage
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return HotDrinksPage(
              drinksList: ProductRepository.loadProducts(ProductType.BEBIDAS));
        },
      ),
    ).then((dynamic product) {
      productsList.add(ProductItemCart(
        productTitle: product.productTitle,
        productAmount: product.productAmount,
        productPrice: product.productPrice,
      ));
    });
  }

  void _openGrainsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return GrainsPage(
          grainsList: ProductRepository.loadProducts(ProductType.GRANO),
        );
      }),
    ).then((dynamic product) {
      productsList.add(ProductItemCart(
        productTitle: product.productTitle,
        productAmount: product.productAmount,
        productPrice: product.productPrice,
      ));
    });
  }

  void _openDessertPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return DessertsPage(
          dessertsList: ProductRepository.loadProducts(ProductType.POSTRES),
        );
      }),
    ).then((dynamic product) {
      productsList.add(ProductItemCart(
        productTitle: product.productTitle,
        productAmount: product.productAmount,
        productPrice: product.productPrice,
      ));
    });
  }

  void _showSnackBar() {
    _scaffoldkey.currentState
      //para esconder el snackbar actual
      ..hideCurrentSnackBar()
      //mostrar dialogo
      ..showSnackBar(SnackBar(
        content: Text("Proximamente"),
        duration: Duration(milliseconds: 1000),
      ));
  }

  void _openCartPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return Cart(
          productsList: productsList,
        );
      }),
    );
  }
}
