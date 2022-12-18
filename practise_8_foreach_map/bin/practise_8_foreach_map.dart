import 'dart:io';

void main(List<String> arguments) {
  // 1 задание

  List firstArr = [for (int i = 1; i <= 5; i++) i];
  print('Первое задание:');
  for (int e in firstArr) {
    print(e);
  }

  print('Первое задание $firstArr');
  print('Первое задание ${firstArr.map((e) {
    return e * e;
  }).toList()}');

  print('');

  // 2 задание

  List reversedArr = [for (int i = 5; i >= 1; i--) i];
  print('Второе задание:');
  reversedArr.forEach((element) {
    print(element);
  });

  print('Второе задание ${reversedArr.toList()}');
  print('Второе задание ${reversedArr.map((e) {
    return e * e;
  }).toList()}');

  print('');

  // 3 задание

  print('Третье задание');
  for (int i = 1; i <= 9; i++) {
    print('$i * 3 = ${i * 3}');
  }
  print('');

  // 4 задание

  print('Четвертое задание');
  print('Введите число:');
  String? userNumber = stdin.readLineSync();
  int number = int.parse(userNumber!);

  int sum = 0;

  for (int i = 1; i <= number; i++) {
    sum += i;
  }

  print('Вы ввели $userNumber, результат: $sum');
}
