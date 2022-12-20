import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // Первое задание
  print('Первое задание');
  print('Введите число от 1 до 31');
  String? dday = stdin.readLineSync();
  int numDay = int.parse(dday!);
  print('Вы ввели: $numDay');

  void getDecade(int a) {
    if (a <= 10 && a > 0) {
      print('Этот день находится в первой декаде');
    } else if (a <= 20 && a > 10) {
      print('Этот день находится во второй декаде');
    } else if (a <= 31 && a > 20) {
      print('Этот день находится в третьей декаде');
    } else {
      print('Нужно ввести число от 1 до 31!!!');
    }
  }

  getDecade(numDay);
  print('');

  // Второе задание
  print('Второе задание');
  print('Введите число от 1 до 12');
  String? month = stdin.readLineSync();
  int numMonth = int.parse(month!);
  print('Вы ввели: $numMonth');

  void getYearSeason(int b) {
    if (b == 12 || b >= 1 && b <= 2) {
      print('Сезон зима');
    } else if (b < 6) {
      print('Сезон весна');
    } else if (b < 9) {
      print('Сезон лето');
    } else if (b < 12) {
      print('Сезон осень');
    } else {
      print('Нужно ввести число от 1 до 12!!!');
    }
  }

  getYearSeason(numMonth);
  print('');

  // Третье задание
  print('Третье задание');
  String word = 'abcde';
  void checkFirstLetter(String slovo) {
    if (slovo[0] == 'a') {
      print('да');
    } else {
      print('нет');
    }
  }

  checkFirstLetter(word);
  print('');

  // Четвертое задание
  print('Четвертое задание');
  String numbers = '12345';
  void checkFirstNumbers(String chisla) {
    if (chisla[0] == '1' || chisla[0] == '2' || chisla[0] == '3') {
      print('да');
    } else {
      print('нет');
    }
  }

  checkFirstNumbers(numbers);

  print('');

  // Пятое задание
  print('Пятое задание');
  print('Введите трехзначное число');
  String threeDigitNum = stdin.readLineSync()!;

  void getThreeDigitSum(String userNum) {
    int sum =
        int.parse(userNum[0]) + int.parse(userNum[1]) + int.parse(userNum[2]);

    return print('Сумма: $sum');
  }

  getThreeDigitSum(threeDigitNum);
  print('');

  // Шестое задание
  print('Шестое задание');
  print('Введите шестизначное число');

  String? sixDigitNum = stdin.readLineSync();

  void getSixDigitSum(String sixNum) {
    int sumOfFirstSixNum =
        int.parse(sixNum[0]) + int.parse(sixNum[1]) + int.parse(sixNum[2]);
    int sumOfSecondSixNum =
        int.parse(sixNum[3]) + int.parse(sixNum[4]) + int.parse(sixNum[5]);
    if (sumOfFirstSixNum == sumOfSecondSixNum) {
      print(
          'Сумма первых трех чисел: $sumOfFirstSixNum равна  сумме вторых трех чисел: $sumOfSecondSixNum');
    } else {
      print(
          'Сумма первых трех чисел: $sumOfFirstSixNum НЕ равна  сумме вторых трех чисел: $sumOfSecondSixNum');
    }
  }

  getSixDigitSum(sixDigitNum!);

// Регистрация

  String userLogin = 'user';
  String userPassword = '123User?';

  print('Введите логин');
  String? userLoginEnter = stdin.readLineSync();
  print('Введите пароль');
  String? userPasswordEnter = stdin.readLineSync();

  // первый вариант
  void registrationOne(String usLog, String usPass) {
    if (usLog == userLogin && usPass == userPassword) {
      print('Доступ разрешен');
    } else {
      print('Логин или пароль введены неправильно');
    }
  }

  registrationOne(userLoginEnter!, userPasswordEnter!);

  // второй вариант
  // void registrationTwo(String pass) {
  //   switch (pass) {
  //     case '123User?':
  //       {
  //         print('Верный пароль');
  //         break;
  //       }
  //     default:
  //       {
  //         print('Повторите ввод');
  //       }
  //   }
  // }

  // для запуска данной функции закоментируйте переменную userLoginEnter и функцию registrationOne
  // registrationTwo(userPasswordEnter!);

  // Бесперерывный ввод чисел
  print('Введите число, для выхода введите 0');
  String userNumber = stdin.readLineSync()!;

  int sumOfNumbers = 0;
  int amount = 0;

  do {
    print('Введите число, для выхода введите 0');
    int doNum = int.parse(userNumber);
    amount++;
    sumOfNumbers += doNum;
    userNumber = stdin.readLineSync()!;
  } while (userNumber != '0');

  print('Количество введенных чисел: $amount');
  print('Сумма введенных чисел: $sumOfNumbers');
  print('Среднее арифметическое  введенных чисел: ${sumOfNumbers / amount}');

  // Сумма нечетных чисел

  print('Введите число, для выхода введите 0');
  String userNumberTwo = stdin.readLineSync()!;

  int sumOfOdd = 0;

  do {
    print('Введите число, для выхода введите 0');
    userNumberTwo = stdin.readLineSync()!;
    if (int.parse(userNumberTwo) % 2 == 1) {
      sumOfOdd += int.parse(userNumberTwo);
    }
  } while (userNumberTwo != '0');

  print('Сумма введенных чисел: $sumOfOdd');
}

// print('Enter something, to exit enter stop');
// String a = stdin.readLineSync()!;

// do {
//   print('Ввведите что нибудь, для выхода введите stop');
//   a = stdin.readLineSync();
// } while (a != 'stop');

// while (a != 'stop') {
//   print('Enter something, to exit enter stop');
//   a = stdin.readLineSync();
// }

// void func(String b) {
//   if (a != 'stop') {
//     print('Enter something, to exit enter stop');
//     a = stdin.readLineSync()!;
//     func(b);
//   } else {
//     print('end');
//   }
// }

// func(a);
