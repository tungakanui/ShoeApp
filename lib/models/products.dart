import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'nike1',
      title: 'Nike Mercurial Superfly 7 Elite FG',
      brand: 'Nike',
      color: Color(0xFFFF2D3F),
      description:
          "Building on the 360 innovation of the 6, the Nike Mercurial Superfly 7 Elite FG Boot adds a Nike Aerowtrac zone to the forefoot and a slightly stiffer chassis to help supercharge traction.",
      price: 399.68,
      type: 'Men',
      imgUrls: [
        "https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/mercurial-superfly-7-elite-fg-football-boot-7tfMF4-removebg-preview.png?alt=media&token=ae87bc35-fd8b-4d18-9edf-ea3d0e220f93",
        "https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/mercurial-superfly-7-elite-fg-football-boot-7tfMF4-removebg-preview%20(1).png?alt=media&token=03b2a898-e00b-4a42-80c7-c3514ab8e2fa",
        "https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/mercurial-superfly-7-elite-fg-football-boot-7tfMF4-removebg-preview%20(2).png?alt=media&token=3eed0065-4e0a-4fa5-9631-d262094a72ec",
        "https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/mercurial-superfly-7-elite-fg-football-boot-7tfMF4-removebg-preview%20(3).png?alt=media&token=56b58d57-1e15-4ca6-89d4-1c8c93e76f5c",
        "https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/mercurial-superfly-7-elite-fg-football-boot-7tfMF4-removebg-preview%20(4).png?alt=media&token=5ba03146-125e-435c-91eb-1141eba3ba7f"
      ],
    ),
    Product(
      id: 'nike2',
      title: 'Nike CruzrOne (Bright Crimson)',
      brand: "Nike",
      description:
          "Designed for steady, easy-paced movement, the Nike CruzrOne keeps you going. Its rocker-shaped sole and plush, lightweight cushioning let you move naturally and comfortably. The padded collar is lined with soft wool, adding luxury to every step, while mesh details let your foot breathe. There's no finish line—there's only you, one step after the next.",
      imgUrls: [
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/1-removebg-preview.png?alt=media&token=0e7e697b-b7cc-4e36-b0ab-741fccbf715f',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/2-removebg-preview.png?alt=media&token=d8dffc7a-73f0-4d2b-941e-2aefd89feb66',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/3-removebg-preview.png?alt=media&token=60142644-e952-4980-926c-12ca0d6ef477',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/4-removebg-preview.png?alt=media&token=d294611d-7d9e-4179-833c-30054daa5bc3',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/5-removebg-preview.png?alt=media&token=fc1e791c-cb73-4120-826b-60feee453f84',
      ],
      color: Color(0xFFA8F500),
      price: 123.45,
      type: 'Men',
    ),
    Product(
      id: 'nike3',
      title: 'Jordan Zoom \'92',
      brand: 'Nike',
      description:
          'A nod to \'90s basketball shoes, the Jordan Zoom \'92 focuses on comfort, while tapping into the irreverent spirit of that era\'s designs. A stretchy-fit sleeve and underfoot cushioning offer a comfortable fit. \'90s-inspired details give the shoe its retro flavour.',
      imgUrls: [
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/11-removebg-preview.png?alt=media&token=965adebc-34ff-4b22-bf72-c9f6cd94cd14',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/22-removebg-preview.png?alt=media&token=25901f18-074a-4864-85ea-1c2560597a22',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/33-removebg-preview.png?alt=media&token=1eb848a5-35ec-4318-be21-828c9b62bad6',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/44-removebg-preview.png?alt=media&token=0c781b80-4325-4c1e-bdbe-d5773ae8b7a3',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/55-removebg-preview.png?alt=media&token=2a22db0f-3f33-453e-a33d-47127cb4d109',
      ],
      color: Color(0xFF008ACE),
      price: 299.69,
      type: 'Men',
    ),
    Product(
      id: 'nike4',
      title: 'Nike SB Zoom Stefan Janoski RM',
      brand: 'Nike',
      description: 'The Nike SB Zoom Stefan Janoski RM pairs a minimal look with a modern fit. It has been updated with a new, plush sockliner and a flexible outsole for better boardfeel right out of the box.',
      imgUrls: [
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/x1-removebg-preview.png?alt=media&token=7340e8a7-1f15-4b18-99c3-e4fb492f35cf',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/x2-removebg-preview.png?alt=media&token=22815074-d1d1-4f71-8daf-e7afc0887fc1',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/x3-removebg-preview.png?alt=media&token=03f48ae6-93aa-4cf0-b35b-74bcdad7bbf5',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/x4-removebg-preview.png?alt=media&token=5b73a8f8-aea1-4796-9b8e-4f8c661a836f',
        'https://firebasestorage.googleapis.com/v0/b/shoeapp-e3be5.appspot.com/o/x5-removebg-preview.png?alt=media&token=62079929-0ec2-47b4-bc47-1666c24ddfbe'
      ],
      color: Color(0xFFDF9EB3),
      price: 191.101,
      type: 'Men',
    )
  ];


  List<Product> get nikeItems{
    return _items.where((productItem) => productItem.brand == 'Nike').toList();
  }

  Product findByID(String id){
    return _items.firstWhere((productItem) => productItem.id == id);
  }

  List<Product> get favoriteItems{
    return _items.where((productItem) => productItem.isFavorite == true).toList();
  }
}
