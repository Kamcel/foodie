import 'package:flutter/material.dart';

void checkEvenOrOdd() {
  int n = 0;
  if (n % 2 == 0) {
    print('Even');
  } else {
    print('Odd');
  }
}

@override
Widget buildVerificationStatuus(bool isVerified) {
  if (isVerified) {
    return const Text('Verified');
  } else {
    return const Text('Unverified');
  }
}

///CORE DRILL
String getGreeting() {
  final hour = DateTime.now().hour;

  if (hour < 12) {
    return ' Good Morning';
  } else if (hour == 12) {
    return ' Good Afternoon';
  } else {
    return ' Good Evening';
  }
}

enum TrafficLight { red, yellow, green }

Color getTrafficLight(TrafficLight light) {
  if (light == TrafficLight.red) {
    return Colors.red;
  } else if (light == TrafficLight.yellow) {
    return Colors.yellow;
  } else {
    return Colors.green;
  }
}
