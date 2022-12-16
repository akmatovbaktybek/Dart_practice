import 'dart:io';

void main(List<String> arguments) {
// 1 задание
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> c = [];

  for (int i = 0; i < a.length; i++) {
    if (b.contains(a[i]) && !c.contains(a[i])) {
      c.add(a[i]);
    }
  }
  print(c);

  // 2 задание
  List k = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List evenElementArray = [];
  for (int i = 0; i < k.length; i++) {
    if (k[i] % 2 == 0) {
      evenElementArray.add(k[i]);
    }
  }
  print('Массив с четными элементами: $evenElementArray');

// 3 задание
  print('Введите букву');
  String? letter = stdin.readLineSync();

  print('Введите Слово');
  String? word = stdin.readLineSync();

  int f = 0;
  funcTwo(String a, String b) {
    for (int i = 0; i < b.length; i++) {
      if (a.contains(b[i])) {
        f += 1;
      }
    }
    return f;
  }

  print('$letter => $word результат: ${funcTwo(letter!, word!)}');

  //   List a = [1, 2, 4, 4, 5];
  // List b = [];
  // List c = [];

  // List f = a.map((e) => e * e).toList();

  // a.forEach((element) {
  //   b.add(element * element);
  // });

  // for (var e in a) {
  //   c.add(e * e);
  // }
}
