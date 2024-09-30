import 'dart:math';
import 'package:random/lucky.dart'; 

//random number between min and max
int randomBetween({required int min, required int max}) {
  var rng = Random();
  return rng.nextInt(max - min + 1) + min; // rng: random number generator
}

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please Provide a List of Names.');
    return;
  }

  // Capitalize:
  for (var name in arguments) {
    String formattedName = name[0].toUpperCase() + name.substring(1).toLowerCase();

    //instance of Lucky class:
    Lucky luckyInstance = Lucky();
    int luckyNumber = luckyInstance.luckyNumber;

    print('Hello $formattedName. Your lucky number is $luckyNumber.');

    var r = randomBetween(min: luckyInstance.min, max: luckyInstance.max);
    print('Random number between ${luckyInstance.min} and ${luckyInstance.max} is $r.');
  }
}
