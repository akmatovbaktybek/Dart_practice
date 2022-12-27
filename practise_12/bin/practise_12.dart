import 'dart:io';

void main(List<String> arguments) {
  // Задание 1
  // print('Введите год');
  // int userYear = int.parse(stdin.readLineSync() ?? '2000');

  // void getIntercalaryYear(int year) {
  //   if (userYear % 4 == 0 || userYear % 400 == 0) {
  //     print('Год високосный, количество дней в этом году 366');
  //   } else {
  //     print('Год НЕ високосный, количество дней в этом году 365');
  //   }
  // }

  // getIntercalaryYear(userYear);

  // Задание 2
  // print('Введите целое, натуральное число:');
  // double userNumber = double.parse(stdin.readLineSync() ?? '2');

  // while (userNumber != 1) {
  //   // print('Ваше число $userNumber');
  //   if (userNumber % 2 == 0) {
  //     userNumber = userNumber / 2;
  //   } else if (userNumber % 2 != 0) {
  //     userNumber = (userNumber * 3 + 1) / 2;
  //   }
  // }

  // print('Результат: $userNumber');

  // 3 задание
  // print('Введите число:');
  // int numberFromUser = int.parse(stdin.readLineSync() ?? '5');

  // List oddNumbers = [];
  // List evenNumbers = [];

  // void getSortList(int numbers) {
  //   for (int i = 1; i <= numbers; i++) {
  //     if (i % 2 == 0) {
  //       evenNumbers.add(i);
  //     } else {
  //       oddNumbers.add(i);
  //     }
  //   }
  // }

  // getSortList(numberFromUser);

  // print('Четные числа: $evenNumbers');
  // print('Нечетные числа: $oddNumbers');

// 4 задание
  // print('Введите число:');
  // double userPerfectNumber = double.parse(stdin.readLineSync() ?? '6');

  // void getPerfectNumber(double userNum) {
  //   double temp = 0;
  //   for (double i = 1; i <= userNum / 2; i++) {
  //     if (userNum % i == 0) {
  //       temp += i;
  //     }
  //   }

  //   if (temp == userNum && temp != 0) {
  //     print('Ваше число совершенное');
  //   } else {
  //     print('Ваше число НЕсовершенно');
  //   }
  // }

  // getPerfectNumber(userPerfectNumber);

  // 5 задание
  GoalKeeper tiboCurtua =
      GoalKeeper(name: 'Тибо Куртуа', position: 'Вратарь', number: 1);
  Defender danielKarvajal =
      Defender(name: 'Даниель Карвахаль', position: 'Защитник', number: 2);
  Defender ederMilitao =
      Defender(name: 'Едер Милитао', position: 'Защитник', number: 3);
  Defender davidAlaba =
      Defender(name: 'Давид Алаба', position: 'Защитник', number: 4);
  Midfielder toniKroos =
      Midfielder(name: 'Тони Кроос', position: 'Полузащитник', number: 8);
  Midfielder lukaModric =
      Midfielder(name: 'Лука Модрич', position: 'Полузащитник', number: 10);
  Midfielder federikoValverde = Midfielder(
      name: 'Федерико Вальверде', position: 'Полузащитник', number: 15);
  Midfielder lukasVaskes =
      Midfielder(name: 'Лукас Васкес', position: 'Полузащитник', number: 17);
  Striker karimBenzema =
      Striker(name: 'Карим Бензема', position: 'Нападающий', number: 9);
  Striker edenHazard =
      Striker(name: 'Эден Азар', position: 'Нападающий', number: 7);

  List<FootballPlayer> realMadrid = [
    tiboCurtua,
    danielKarvajal,
    ederMilitao,
    davidAlaba,
    toniKroos,
    lukaModric,
    federikoValverde,
    lukasVaskes,
    karimBenzema,
    edenHazard
  ];

  GoalKeeper terStegen =
      GoalKeeper(name: 'Марк Андре Тер-Штеген', position: 'Вратарь', number: 1);
  Defender ektor =
      Defender(name: 'Эктор Бельерин', position: 'Защитник', number: 2);
  Defender andreas =
      Defender(name: 'Андреас Кристенсен', position: 'Защитник', number: 15);
  Defender alba =
      Defender(name: 'Жорди Альба', position: 'Защитник', number: 18);
  Midfielder buskets =
      Midfielder(name: 'Серджи Бускетс', position: 'Полузащитник', number: 5);
  Midfielder deJong =
      Midfielder(name: 'Френки Де Йонг', position: 'Полузащитник', number: 21);
  Midfielder frank =
      Midfielder(name: 'Франк Кессиэ', position: 'Полузащитник', number: 19);
  Midfielder pedri =
      Midfielder(name: 'Педри', position: 'Полузащитник', number: 8);
  Striker dembele =
      Striker(name: 'Усман Дембеле', position: 'Нападающий', number: 7);
  Striker lewandowski =
      Striker(name: 'Роберт Левандовски', position: 'Нападающий', number: 9);
  List<FootballPlayer> barcelona = [
    terStegen,
    ektor,
    andreas,
    alba,
    buskets,
    deJong,
    frank,
    pedri,
    dembele,
    lewandowski
  ];

  void getPLayerName(List player) {
    for (int i = 0; i < player.length; i++) {
      print(
          'Имя: ${player[i].name}, Позиция: ${player[i].position}, Номер: ${player[i].number}');
    }
  }

  // print('Игроки Реал Мадрид');
  // getPLayerName(realMadrid);
  // print('');
  // print('Игроки Барселоны');
  // getPLayerName(barcelona);

  // 6 задание не сделано
}

class FootballPlayer {
  String name;
  String position;
  int number;

  FootballPlayer(
      {required this.name, required this.position, required this.number});
}

class GoalKeeper extends FootballPlayer {
  GoalKeeper(
      {required super.name, required super.number, required super.position});
}

class Defender extends FootballPlayer {
  Defender(
      {required super.name, required super.number, required super.position});
}

class Midfielder extends FootballPlayer {
  Midfielder(
      {required super.name, required super.number, required super.position});
}

class Striker extends FootballPlayer {
  Striker(
      {required super.name, required super.number, required super.position});
}
