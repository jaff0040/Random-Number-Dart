import 'dart:math';
import 'dart:io';

class Lucky {
  late int luckyNumber;
  late int min, max;

  // Constructor
  Lucky() {
    min = int.parse(Platform.environment['MIN'] ?? '10');
    max = int.parse(Platform.environment['MAX'] ?? '100');

    // Generate random number between min and max
    luckyNumber = Random().nextInt(max - min + 1) + min;
  }
}
