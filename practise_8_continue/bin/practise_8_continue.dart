import 'dart:io';

void main(List<String> arguments) {
// 1 задание
  print('Первое задание:');
  List squareArr = [];
  List getSquare() {
    for (int i = 10; i <= 20; i++) {
      squareArr.add(i * i);
    }
    return squareArr;
  }

  var result = getSquare();

  print('Результат: $result');
  print('');

  // 2 задание
  print('Второе задание:');
  print('Введите число:');

  String? userNumOne = stdin.readLineSync();
  int userNumSum = 0;

  int getSumOfNum(String m) {
    int number = int.parse(m);
    for (int i = 1; i <= number; i++) {
      userNumSum = userNumSum + i;
    }
    return userNumSum;
  }

  int resultOfUserNumSum = getSumOfNum(userNumOne!);

  print('Вы ввели: $userNumOne, результат: $resultOfUserNumSum');

  // 3 задание
  print('Третье задание:');
  print('Введите сумму:');
  String? rub = stdin.readLineSync();
  double procent = 0.03;
  print('Введите количество лет:');
  String? year = stdin.readLineSync();

  double getResult(String money, String time) {
    int userMoney = int.parse(money);
    int userYear = int.parse(time);
    double resultProcentYear = userMoney + userMoney * procent * userYear;
    for (int i = 0; i <= userYear; i++) {
      resultProcentYear;
    }
    return resultProcentYear;
  }

  double resultKassa = getResult(rub!, year!);
  print('Вы ввели сумму: $rub, количество лет: $year, Результат: $resultKassa');

  // 4 задание
  print('Четвертое задание:');
  List c = [];

  List getElement() {
    for (int i = 20; i <= 50; i++) {
      if (i % 3 == 0 && i % 5 != 0) {
        c.add(i);
      }
    }
    return c;
  }

  var resultToC = getElement();

  print('Числа, которые делятся на 3, но не делятся на 5: $resultToC');
  print('');

  // 5 задание

  print('Пятое задание:');
  int h = 0;

  int getSummElement() {
    for (int i = 1; i <= 50; i++) {
      if (i % 5 == 0 || i % 7 == 0) {
        h += i;
      }
    }
    return h;
  }

  var resultToh = getSummElement();

  print('Сумма чисел, которые делятся на 5 или на 7: $resultToh');
  print('');

  // 6 задание
  print('Шестое задание:');
  List numbers = [];

  List getSymOfDoubleDigit() {
    for (int i = 10; i <= 99; i++) {
      if (i % 4 == 0 && i % 6 != 0) {
        numbers.add(i);
      }
    }
    return numbers;
  }

  List resultOfDoubleDigit = getSymOfDoubleDigit();

  print(
      'Двузначные числа, которые делятся на 4, но не делятся на 6: $resultOfDoubleDigit');
  print('');

  // 7 задание
  print('Седьмое задание:');

  List krat17Array = [];
  int sumKrat17 = 0;

  getMultiplesNum() {
    for (int i = 100; i <= 200; i++) {
      if (i % 17 == 0) {
        krat17Array.add(i);
        sumKrat17 += i;
      }
    }
    return sumKrat17;
  }

  getMultiplesNum();

  print('Числа от 100 до 200 кратные 17: $krat17Array');
  print('Сумма: $sumKrat17');
  print('');

// 8 задание
  print('Восьмое задание:');
  print('Введите число:');
  String userNum = stdin.readLineSync()!;
  int sumSquare = 0;

  int getSumOfSquare(String n) {
    int b = int.parse(n);
    for (int i = 1; i <= b; i++) {
      sumSquare += i * i;
    }
    return sumSquare;
  }

  int resultOfUserNumSquare = getSumOfSquare(userNum);
  print('Вы ввели: $userNum, результат: $resultOfUserNumSquare');
}
