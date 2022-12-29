import 'dart:io';

import 'package:hello_world/hello_world.dart' as hello_world;

void main(List<String> arguments) {
  print('Hello world: ${hello_world.calculate()}!');
}

void variables() {
  final name = "Test";
  final year = "hello";
  final antennaDiameter = 3.7;
  final flyObjects = ["Jupiter", "Saturn", "Uranus", "Neptune"];
  final image = {
    "tags": ["saturn"],
    "url": "//path/to/saturn.jpg"
  };
}

void controlFlow(int year, List<int> flybyObjects) {
  if (year >= 2000) {
    print("21st century");
  } else if (year >= 1901) {
    print("20th century");
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

enum PlanetType {
  GAS,
  ICE,
}

const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((value) {
    print(message);
  });
}

Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      final file = File("$object.txt");
      if (await file.exists()) {
        final modified = await file.lastModified();
        print("File for $object already exists. It was modified on $modified");
        continue;
      }
      await file.create();
      await file.writeAsString("Start describing $object in file.");
    } on IOException catch (e) {
      print("cannot create description for $object: $e");
    }
  }
}

Stream<String> report(Object craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield "$craft flied with $object";
  }
}


