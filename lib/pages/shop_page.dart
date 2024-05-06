import 'package:flutter/material.dart';
import 'package:flutter_dart_andriod/models/coffee.dart';

import '../components/coffee_title.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Coffee o\'clock',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),
        
        //padding
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
        ),

        // hot drinks
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Hot Drinks 🔥☕🔥",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.brown[700]),
              )
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                Coffee coffee = Coffee(
                    name: 'Cappucino',
                    price: '15',
                    imagePath: 'lib/image/Cappucino.png',
                    description: "Cappucino");
                return CoffeeTile(
                  coffee: coffee,
                );
              },
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
        )
      ],
    );
  }
}
