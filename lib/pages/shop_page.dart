import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puma_store_app/components/shoe_tile.dart';
import 'package:puma_store_app/models/cart.dart';
import 'package:puma_store_app/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCar(shoe);

    //notify user item has been added to cart
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully Added to Cart!'),
        content: Text('Check your cart!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.black),
                ),
                Icon(Icons.search, color: Colors.black),
              ],
            ),
          ),
          //message
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'forever fast is always first, never second, never third...',
              style: TextStyle(color: Colors.white),
            ),
          ),

          // Hot picks(product tile)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  //get a shoe from shop list
                  Shoe shoe = value.getShoeList()[index];
                  //return the shoe
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
