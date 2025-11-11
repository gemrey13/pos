import 'package:flutter/material.dart';
import 'package:pos/components/home_tab.dart';
import 'package:pos/components/home_topbar.dart';
import 'package:pos/components/product_card.dart';
import 'package:pos/components/product_order.dart';
import 'package:pos/components/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final products = [
    {
      'image': 'items/1.png',
      'title': 'Original Burgers',
      'price': '\$5.99',
      'item': '11 item',
    },
    {
      'image': 'items/2.png',
      'title': 'Double Burger',
      'price': '\$10.99',
      'item': '10 item',
    },
    {
      'image': 'items/3.png',
      'title': 'Cheese Burger',
      'price': '\$6.99',
      'item': '7 item',
    },
    {
      'image': 'items/4.png',
      'title': 'Double Cheese Burger',
      'price': '\$12.99',
      'item': '20 item',
    },
    {
      'image': 'items/5.png',
      'title': 'Spicy Burger',
      'price': '\$7.39',
      'item': '12 item',
    },
    {
      'image': 'items/6.png',
      'title': 'Special Black Burger',
      'price': '\$7.39',
      'item': '39 item',
    },
    {
      'image': 'items/7.png',
      'title': 'Special Cheese Burger',
      'price': '\$8.00',
      'item': '2 item',
    },
    {
      'image': 'items/8.png',
      'title': 'Jumbo Cheese Burger',
      'price': '\$15.99',
      'item': '2 item',
    },
    {
      'image': 'items/8.png',
      'title': 'Jumbo Cheese Burger',
      'price': '\$15.99',
      'item': '2 item',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 14,
          child: Column(
            children: [
              homeTopbar(
                title: 'TEST POS',
                subTitle: '20 October 2022',
                action: searchInput(),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    homeTab(
                      icon: 'icons/icon-burger.png',
                      title: 'Burger',
                      isActive: true,
                    ),
                    homeTab(
                      icon: 'icons/icon-noodles.png',
                      title: 'Noodles',
                      isActive: false,
                    ),
                    homeTab(
                      icon: 'icons/icon-drinks.png',
                      title: 'Drinks',
                      isActive: false,
                    ),
                    homeTab(
                      icon: 'icons/icon-desserts.png',
                      title: 'Desserts',
                      isActive: false,
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: (1 / 1.2),
                  children: [
                    for (var product in products)
                      productCard(
                        image: product['image']!,
                        title: product['title']!,
                        price: product['price']!,
                        item: product['item']!,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              homeTopbar(
                title: 'Order',
                subTitle: 'Table 8',
                action: Container(),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    productOrder(
                      image: 'items/1.png',
                      title: 'Orginal Burger',
                      qty: '2',
                      price: '\$5.99',
                    ),
                    productOrder(
                      image: 'items/2.png',
                      title: 'Double Burger',
                      qty: '3',
                      price: '\$10.99',
                    ),
                    productOrder(
                      image: 'items/6.png',
                      title: 'Special Black Burger',
                      qty: '2',
                      price: '\$8.00',
                    ),
                    productOrder(
                      image: 'items/4.png',
                      title: 'Special Cheese Burger',
                      qty: '2',
                      price: '\$12.99',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xff1f2029),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$40.32',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Tax',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$4.32',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        height: 2,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$44.64',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepOrange,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.print, size: 16),
                            SizedBox(width: 6),
                            Text('Print Bills')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}