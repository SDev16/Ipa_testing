import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meal_magik/models/cart_item.dart';
import 'package:meal_magik/models/food.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    ////////! burger
    Food(
        description:
            " Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Burger 1",
        imagePath: "lib/images/burger/burger1.jpg",
        price: 5000,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra  Cheese", price: 150),
          Addon(name: "Bacon", price: 250),
          Addon(name: "Avocado", price: 500),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Burger 2",
        imagePath: "lib/images/burger/burger2.jpg",
        price: 5000,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra  Cheese", price: 150),
          Addon(name: "Bacon", price: 250),
          Addon(name: "Avocado", price: 500),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Burger 3",
        imagePath: "lib/images/burger/burger3.jpg",
        price: 5000,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra  Cheese", price: 150),
          Addon(name: "Bacon", price: 250),
          Addon(name: "Avocado", price: 500),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Burger 4",
        imagePath: "lib/images/burger/burger4.jpg",
        price: 5000,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra  Cheese", price: 150),
          Addon(name: "Bacon", price: 250),
          Addon(name: "Avocado", price: 500),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Burger 5",
        imagePath: "lib/images/burger/burger5.jpg",
        price: 5000,
        category: FoodCategory.Burger,
        availableAddons: [
          Addon(name: "Extra  Cheese", price: 150),
          Addon(name: "Bacon", price: 250),
          Addon(name: "Avocado", price: 500),
        ]),

    ////////! ice
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Ice Cream 1",
        imagePath: "lib/images/ice/icecream1.jpg",
        price: 5000,
        category: FoodCategory.Ice,
        availableAddons: [
          Addon(name: "Extra  Cone", price: 150),
          Addon(name: "Cake", price: 250),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Ice Cream 2",
        imagePath: "lib/images/ice/icecream2.jpg",
        price: 5000,
        category: FoodCategory.Ice,
        availableAddons: [
          Addon(name: "Extra  Cone", price: 150),
          Addon(name: "Cake", price: 250),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Ice Cream 3",
        imagePath: "lib/images/ice/icecream3.jpg",
        price: 5000,
        category: FoodCategory.Ice,
        availableAddons: [
          Addon(name: "Extra  Cone", price: 150),
          Addon(name: "Cake", price: 250),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Ice Cream 4",
        imagePath: "lib/images/ice/icecream4.jpg",
        price: 5000,
        category: FoodCategory.Ice,
        availableAddons: [
          Addon(name: "Extra  Cone", price: 150),
          Addon(name: "Cake", price: 250),
        ]),
    Food(
        description:
            "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
        name: "Ice Cream 5",
        imagePath: "lib/images/ice/icecream5.jpg",
        price: 5000,
        category: FoodCategory.Ice,
        availableAddons: [
          Addon(name: "Extra  Cone", price: 150),
          Addon(name: "Cake", price: 250),
        ]),

    ////////! lunch
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Lunch 1",
      imagePath: "lib/images/lunch/l1.jpg",
      price: 5000,
      category: FoodCategory.Lunch,
      availableAddons: [
        Addon(name: "Extra  plate", price: 1500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Lunch 2 ",
      imagePath: "lib/images/lunch/l2.jpg",
      price: 5000,
      category: FoodCategory.Lunch,
      availableAddons: [
        Addon(name: "Extra  plate", price: 1500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Lunch 3",
      imagePath: "lib/images/lunch/l3.jpg",
      price: 5000,
      category: FoodCategory.Lunch,
      availableAddons: [
        Addon(name: "Extra  plate", price: 1500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Lunch 4",
      imagePath: "lib/images/lunch/l4.jpg",
      price: 5000,
      category: FoodCategory.Lunch,
      availableAddons: [
        Addon(name: "Extra  plate", price: 1500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Lunch 5",
      imagePath: "lib/images/lunch/l5.jpg",
      price: 5000,
      category: FoodCategory.Lunch,
      availableAddons: [
        Addon(name: "Extra  plate", price: 1500),
      ],
    ),
    ////////! sandwich
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sandwich 1",
      imagePath: "lib/images/sandwich/sandwich1.jpg",
      price: 5000,
      category: FoodCategory.Sandwich,
      availableAddons: [
        Addon(name: "Extra  spice", price: 250),
        Addon(name: "Extra  butter", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sandwich 2",
      imagePath: "lib/images/sandwich/sandwich2.jpg",
      price: 5000,
      category: FoodCategory.Sandwich,
      availableAddons: [
        Addon(name: "Extra  spice", price: 250),
        Addon(name: "Extra  butter", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sandwich 3",
      imagePath: "lib/images/sandwich/sandwich3.jpg",
      price: 5000,
      category: FoodCategory.Sandwich,
      availableAddons: [
        Addon(name: "Extra  spice", price: 250),
        Addon(name: "Extra  butter", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sandwich 4",
      imagePath: "lib/images/sandwich/sandwich4.jpg",
      price: 5000,
      category: FoodCategory.Sandwich,
      availableAddons: [
        Addon(name: "Extra  spice", price: 250),
        Addon(name: "Extra  butter", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sandwich 5",
      imagePath: "lib/images/sandwich/sandwich5.jpg",
      price: 5000,
      category: FoodCategory.Sandwich,
      availableAddons: [
        Addon(name: "Extra  spice", price: 250),
        Addon(name: "Extra  butter", price: 500),
      ],
    ),
    ////////! sweets
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sweets 1",
      imagePath: "lib/images/sweets/s1.jpg",
      price: 1000,
      category: FoodCategory.Sweets,
      availableAddons: [
        Addon(name: "Extra  candy", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sweets2",
      imagePath: "lib/images/sweets/s2.jpg",
      price: 1000,
      category: FoodCategory.Sweets,
      availableAddons: [
        Addon(name: "Extra  candy", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sweets 3",
      imagePath: "lib/images/sweets/s3.jpg",
      price: 1000,
      category: FoodCategory.Sweets,
      availableAddons: [
        Addon(name: "Extra  candy", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sweets 4",
      imagePath: "lib/images/sweets/s4.jpg",
      price: 1000,
      category: FoodCategory.Sweets,
      availableAddons: [
        Addon(name: "Extra  candy", price: 500),
      ],
    ),
    Food(
      description:
          "Food Description \n Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat quisquam tempore eligendi reprehenderit!  Aliquam delectus ut sunt ipsum dicta laborum assumenda  unde officia dolore exercitationem.",
      name: "Sweets 5",
      imagePath: "lib/images/sweets/s5.jpg",
      price: 1000,
      category: FoodCategory.Sweets,
      availableAddons: [
        Addon(name: "Extra  candy", price: 500),
      ],
    ),
  ];

  //usercart
  final List<CartItem> _cart = [];

// deliveryaddress
  String _string = "Enter your Location";

  /*

  Getters

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _string;

  /*
  Operations

  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //////! check if abilable then increase quantity
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      ///! check if food items are thesame
      ///
      bool isSameFood = item.food == food;

      ///
      //////! check if food items are thesame
      ///
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exist increase qty
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //add new item to cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  // getting total num of items

  int getTotalItemCount() {
    int totalItemcount = 0;

    for (CartItem cartItem in _cart) {
      totalItemcount += cartItem.quantity;
    }

    return totalItemcount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery location
  void updateDeliveryAddress(String newAddress) {
    _string = newAddress;
    notifyListeners();
  }

  /*

  Helpers

  */

  // generate a reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln(
      "Here's your receipt ..",
    );
    receipt.writeln();

    // format the date and include seconds only
    String formatedDate = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).format(DateTime.now());

    receipt.writeln(formatedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("To Be Delivering At: ${deliveryAddress}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "XAF ${price.toStringAsFixed(2)}";
  }

  // format list of addons into string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
