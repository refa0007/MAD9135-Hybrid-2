import 'dart:io';
import 'dart:math';

class Lucky {
  int luckyNumber = 0;

  Lucky() {
    final min = int.parse(Platform.environment['MIN'] ?? '1');
    final max = int.parse(Platform.environment['MAX'] ?? '100');
    final random = Random();
    luckyNumber = min + random.nextInt(max - min + 1);
  }
}
