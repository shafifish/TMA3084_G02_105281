import 'dart:io';

void main() {
  // Show pizza prices
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

  String again = 'yes';

  // Keep ordering until the user says no
  while (again == 'yes') {
    // Ask for pizza size
    print('Please enter your pizza size (small, medium, or large):');
    String pizzaSize = stdin.readLineSync()!.toLowerCase();

    double price = 0;

    // Determine price using switch case
    switch (pizzaSize) {
      case 'small':
        price = 5;
        break;

      case 'medium':
        price = 7;
        break;

      case 'large':
        price = 10;
        break;

      default:
        print('Invalid pizza size. Try again.');
        continue; // go back to the top of the loop
    }

    // Ask for quantity
    int quantity = 0;
    while (quantity <= 0) {
      print('How many pizzas do you want of $pizzaSize?');
      int? input = int.tryParse(stdin.readLineSync()!);

      if (input == null || input <= 0) {
        print('Please enter a valid number.');
      } else {
        quantity = input;
      }
    }

    // Calculate total payment
    double total = price * quantity;
    print('Total payment: $total USD');

    // Ask if the customer wants to order again
    print('Order another pizza? (yes/no):');
    again = stdin.readLineSync()!.toLowerCase();
  }

  print('Thank you for ordering!');
}