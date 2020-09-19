import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:estructura_practica_1/models/product_grains.dart';

import 'product_dessert.dart';
import 'product_dessert.dart';

enum ProductType { BEBIDAS, GRANO, POSTRES }

class ProductRepository {
  static List<dynamic> loadProducts(ProductType prodType) {
    // ----------------------              ----------------------------//
    // ----------------------       Tazas      ----------------------------//
    // ----------------------              ----------------------------//

    //if (prodType == ProductType.POSTRES) {
    // TODO: Agregar al menos 5 productos "postres"
    //}

    // ----------------------              ----------------------------//
    // ----------------------       Granos      ----------------------------//
    // ----------------------              ----------------------------//
    if (prodType == ProductType.GRANO)
      return <ProductGrains>[
        ProductGrains(
          productTitle: "Lavazza",
          productDescription: "Endulzado con aromas florales.",
          productImage:
              "https://www.lavazza.it/content/dam/lavazza/products/caffe/macinato/moka/qualitaoro/new_render/tin_250_en/Tin-oro-en-250-thumb.png",
          productWeight: ProductWeight.KILO,
          productAmount: 0,
        ),
        ProductGrains(
          productTitle: "Guilis",
          productDescription: "La mezcla de cinco orígenes diferentes.",
          productImage:
              "https://www.cafesguilis.com/wp-content/uploads/2018/08/mezcla_especial_1Kg.jpg",
          productWeight: ProductWeight.KILO,
          productAmount: 0,
        ),
        ProductGrains(
          productTitle: "Illy",
          productDescription:
              "Con toque de chocolate, miel, caramelo y un cierto amargor. ",
          productImage:
              "https://http2.mlstatic.com/illy-cafe-en-grano-etiopia-arabica-seleccion-de-un-solo-or-D_NQ_NP_987783-MLM31233980209_062019-F.jpg",
          productWeight: ProductWeight.KILO,
          productAmount: 0,
        ),
        ProductGrains(
          productTitle: "Sanani",
          productDescription:
              "Tiene un muy buen sabor intenso y con fuerte acidez.",
          productImage:
              "https://http2.mlstatic.com/cafe-tostado-en-granos-1kg-origen-colombia-maquinas-express-D_NQ_NP_947249-MLA31115265526_062019-Q.jpg",
          productWeight: ProductWeight.KILO,
          productAmount: 0,
        ),
        ProductGrains(
          productTitle: "La Mexicana",
          productDescription:
              "Es un café único por la manera en la que están tostados sus granos.",
          productImage:
              "https://www.lamexicana.es/404-large_default/cafe-1890-mezcla-suave.jpg",
          productWeight: ProductWeight.KILO,
          productAmount: 0,
        ),
      ];
    // ----------------------              ----------------------------//
    // ----------------------       Bebida caliente      ----------------------------//
    // ----------------------              ----------------------------//
    if (prodType == ProductType.BEBIDAS)
      return <ProductHotDrinks>[
        ProductHotDrinks(
          productTitle: "Ristretto",
          productDescription: "Expresso con una proporción menor de agua.",
          productImage:
              "https://ineedcoffee.com/wp-content/uploads/2007/09/IMG_9259.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Americano",
          productDescription:
              "Derivado del espresso, con mayor cantidad de agua.",
          productImage:
              "https://cafe.omcns.com/wp-content/uploads/2018/08/Americano-2.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Expresso",
          productDescription:
              "Uno de los tipos de café más básicos y sencillos.",
          productImage:
              "https://cdn.cnn.com/cnnnext/dam/assets/200120171537-espresso-machine-stock-large-169.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Lungo",
          productDescription:
              "Aquí es directamente la infusión la que se produce en mayor cantidad.",
          productImage:
              "https://coffeegearx.com/wp-content/uploads/2019/08/What-Does-a-Lungo-Taste-Like.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Café bombón",
          productDescription:
              "Se sustituye la leche normal por la leche condensada.",
          productImage: "https://ua.all.biz/img/ua/catalog/4944889.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Mocca",
          productDescription:
              "Además de leche y café se emplea Mocolate o cacao.",
          productImage:
              "https://www.juanvaldezcafe.com/sites/default/files/mocca_grande.png",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Café con leche",
          productDescription: "Incorporación de leche al café.",
          productImage:
              "https://www.goodfood.com.au/content/dam/images/3/f/6/p/i/image.related.articleLeadwide.620x349.3f2ru.png/1411331099390.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Café vienés",
          productDescription: "Se acompaña en vez de leche con crema o nata.",
          productImage:
              "https://www.hogarmania.com/archivos/201105/vienes-xl-668x400x80xX.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Macchiato",
          productDescription: "Expresso con una ligera cantidad de leche.",
          productImage:
              "https://www.nespresso.com/ncp/res/uploads/recipes/nespresso-recipes-Macchiato.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Cappuccino",
          productDescription: "Un tercio de café y el resto leche.",
          productImage:
              "https://www.perfectdailygrind.com/wp-content/uploads/2019/02/cappuccino-1.png",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
        ProductHotDrinks(
          productTitle: "Azteca",
          productDescription:
              "Además de café, hielo y leche una o más bolas de helado.",
          productImage:
              "https://www.gastronomiavasca.net/uploads/image/file/6838/w700_caf__azteca.jpg",
          productSize: ProductSize.M,
          productAmount: 0,
        ),
      ];

    if (prodType == ProductType.POSTRES)
      return <ProductDesserts>[
        ProductDesserts(
            productTitle: 'Sticky Toffee Pudding',
            productDescription:
                'Pudin de caramelo de origen escoses servido con natillas o helado de vainilla',
            productImage:
                'https://www.rockrecipes.com/wp-content/uploads/2013/01/Sticky-Toffee-Pudding-2-480x480.jpg',
            productSize: DessertSize.CH,
            productAmount: 0),
        ProductDesserts(
            productTitle: 'Profiteroles',
            productDescription:
                'Bolas elaboradas con pasta choux que se rellenan con diversos ingredientes segun las regiones  del mundo donde se elaboren',
            productImage:
                'https://i.blogs.es/d0530b/profiteroles-chocolate-01/1366_2000.jpeg',
            productSize: DessertSize.CH,
            productAmount: 0),
        ProductDesserts(
            productTitle: 'Red Velvet',
            productDescription:
                'Pastel en capas cubierto con un glaseado de queso cremoso o roux cocinado',
            productImage:
                'https://i.pinimg.com/originals/38/00/56/3800562c15cb0c7da3e48a2410d630e3.jpg',
            productSize: DessertSize.CH,
            productAmount: 0),
        ProductDesserts(
            productTitle: 'Tiramisu',
            productDescription: 'Pastel frio preparado en capas.',
            productImage: 'https://i.blogs.es/628957/tiramisu/840_560.jpg',
            productSize: DessertSize.CH,
            productAmount: 0),
        ProductDesserts(
            productTitle: 'Brownie',
            productDescription: 'Bizcocho de chocolate con trocitos de nuez',
            productImage:
                'https://cdn2.cocinadelirante.com/sites/default/files/images/2019/07/receta-facil-de-brownies-con-nutella.jpg',
            productSize: DessertSize.CH,
            productAmount: 0),
        ProductDesserts(
            productTitle: 'Cheesecake',
            productDescription:
                'Pastel hecho a base de ricotta, requeson o cheddar, queso quark, azucar, huevos, crema y frutas.',
            productImage:
                'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2019/01/Best-Cheesecake-Recipe-2-1-of-1-4.jpg',
            productSize: DessertSize.CH,
            productAmount: 0),
      ];
    return List(); // otherwise empty list
  }
}
