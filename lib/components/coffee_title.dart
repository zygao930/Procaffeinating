import 'package:flutter/material.dart';
import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;

  CoffeeTile({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Coffee picture
          Container(
            height: 380,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  coffee.imagePath,
                  fit: BoxFit.cover,
                  height: 400,// Adjust fit as needed
                ),
              ),
            ),
          ),
          // Description (You might want to add it back if needed)
          // Price + details
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right:8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Coffee name
                          Text(
                            coffee.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                          const SizedBox(height: 5),
                          // Price
                          Text(
                              '\£${coffee.price}',
                              style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      // Plus button
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
