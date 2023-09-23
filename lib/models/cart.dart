import 'package:flutter/widgets.dart';

import 'package:puma_store_app/models/shoe.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Puma Boot X',
      price: '300',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'assets/images/shoe1.jpg',
    ),
    Shoe(
      name: 'Puma Boot Phantom',
      price: '550',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'assets/images/shoe2.jpg',
    ),
    Shoe(
      name: 'Puma Boot Gen Z',
      price: '950',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'assets/images/shoe3.jpg',
    ),
    Shoe(
      name: 'Puma Boot Millenial',
      price: '250',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'assets/images/shoe4.jpg',
    ),
  ];

//list of items in user cart
  List<Shoe> userCart = [];
//get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to cart
  void addItemToCar(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item from cart
  void removeItemToCar(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
