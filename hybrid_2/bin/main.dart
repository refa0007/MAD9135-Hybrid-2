import 'dart:io';
import 'package:hybrid_2/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide names');
    return;
  }

  for (var name in arguments) {
    final lucky = Lucky();
    final capitalizedName = CapsFirstLetter(name);
    print('Hello $capitalizedName. Your lucky number is ${lucky.luckyNumber}');
  }
}

String CapsFirstLetter(String name) {
  if (name.isEmpty) return name;
  return name[0].toUpperCase() + name.substring(1);
}
