import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/models/rating_model.dart';

class CartModel {
  final ProductModel product;
  final int numOfItem;
 final DateTime date = DateTime.now();
  CartModel({
    required this.product,
    required this.numOfItem,
  });
}

List<CartModel> demoCarts = [
  CartModel(product: demoProducts[0], numOfItem: 2),
  CartModel(product: demoProducts[1], numOfItem: 1),
  CartModel(product: demoProducts[2], numOfItem: 1),
];

List<ProductModel> demoProducts = const [
  ProductModel(
    id: 2,
    title: 'Mens Casual Premium Slim Fit T-Shirts ',
    price: 22.3,
    description:
        'lim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
    category: 'men\'s clothing',
    image:
        'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
    rating: Rating(rate: 4.1, count: 259),
  ),
  ProductModel(
    id: 5,
    title:
        'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet',
    price: 695,
    description:
        'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.',
    category: 'jewelery',
    image: 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
    rating: Rating(rate: 4.6, count: 600),
  ),
  ProductModel(
    id: 10,
    title: 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s',
    price: 109,
    description:
        'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)',
    category: 'electronics',
    image: 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg',
    rating: Rating(rate: 2.9, count: 470),
  ),
];
