import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product({@required this.id,@required this.category,@required this.name,@required this.description,@required this.imgUrl,@required this.price});

}

class Products with ChangeNotifier{
  List<Product>_items=[
    Product(
      id: '1',
      name: 'Art Of The Deal',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/1/1c/Trump_the_art_of_the_deal.jpg',
      price: 5,
      category: 'Business',
      description:
      'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '2',
      name: 'Rich Dad Poor Dad',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/b/b9/Rich_Dad_Poor_Dad.jpg',
      price: 5,
      category: 'Business',
      description:
      'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets',
    ),
    Product(
      id: '3',
      name: 'Fossil Gen 5',
      imgUrl:
      'https://images-na.ssl-images-amazon.com/images/I/71ERfTd2-KL._UL1500_.jpg',
      price: 400,
      category: 'Watches',
      description:
      'Smartwatch powered with OS by Google Work with iPhone and Android phones, circumference: 200 +/- 5mm.Extend your battery life to several days with the new, smart battery mode; Magnetic USB rapid charger is included; Charge up to 80 percent within one hour ',
    ),
    Product(
      id: '4',
      name: 'IPhone 12 Pro',
      imgUrl:
      'https://images-na.ssl-images-amazon.com/images/I/71ZOtNdaZCL._SL1500_.jpg',
      price: 4000,
      category: 'Phones',
      description: '6.1 inch Super Retina XDR Display.Ceramic shield, tougher than any smartphone glassAdvanced dual camera system with 12 MP ultra wide and wide camera; Night Mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR Recording',
    ),
    Product(
      id: '5',
      name: 'Marshall Stanmore II',
      imgUrl:
      'https://images-na.ssl-images-amazon.com/images/I/71fFkHmtDlL._SL1000_.jpg',
      price: 400,
      category: 'Speakers',
      description: 'Marshall Cavendish Acton II Bluetooth Speaker',
    ),
    Product(
      id: '6',
      name: 'Acer Aspire',
      imgUrl: 'https://www.hilaptop.com/userdata/public/gfx/6060.jpg',
      price: 4,
      category: 'Laptops',
      description: '8 gb ram, mx 150.',
    ),
    Product(
      id: '7',
      name: 'SONY WH-CH510 Wired Headphones',
      imgUrl: 'https://images-na.ssl-images-amazon.com/images/I/41i%2BKMBAFjL.jpg',
      price: 5,
      category: 'Laptops',
      description: 'Simplified Bluetooth connectivity with NFC One-Touch.30 mm driver unit for dynamic sound',
    ),
    Product(
      id: '8',
      name: 'PS4 Dual Shock',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/commons/5/59/DualShock_4.jpg',
      price: 4,
      category: 'Fiction',
      description:
      'The PlayStation 4 (officially abbreviated as PS4) is an eighth-generation home video game console developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 in February 2013, it was launched on November 15 in North America, November 29 in Europe, South America and Australia, and on February 22, 2014 in Japan.',
    ),
    Product(
      id: '9',
      name: 'GTA V',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
      price: 4,
      category: 'Romantc',
      description: 'Best selling poular free roaming game',
    ),

  ];

  List<Product> get items{
    return [..._items];
  }
  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}

