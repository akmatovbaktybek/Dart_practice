import 'dart:math';

void main() {
  // 1 задание
  int finger = Random().nextInt(5) + 1;
  print('Номер пальца: $finger');
  if (finger == 1) {
    print('Большой палец');
  } else if (finger == 2) {
    print('Указательный палец');
  } else if (finger == 3) {
    print('Средний палец');
  } else if (finger == 4) {
    print('Безымянный палец');
  } else {
    print('Мизинец');
  }

  // 2 задание

  int min = Random().nextInt(60) + 1;
  print('Рандомное число для часа: $min');

  if (min > 0 && min <= 15) {
    print('Число попадает в 1-ую четверть');
  } else if (min > 15 && min <= 30) {
    print('Число попадает во 2-ую четверть');
  } else if (min > 30 && min <= 45) {
    print('Число попадает в 3-юю четверть');
  } else {
    print('Число попадает в 4-ую четверть');
  }

  // 3 задание
  String lang = 'ru';
  List ruArray = [
    'Понедельник',
    'Вторник',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресенье'
  ];
  List engArray = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Sunday'
  ];
  List arr = [];

  if (lang == 'ru') {
    print('Вы выбрали русский язык');
    arr.add(ruArray);
  } else if (lang == 'en') {
    print('You have chosen English');
    arr.add(engArray);
  }
  print(arr);

  // 4 задание

  String letters = 'abcde';
  if (letters[0] == 'a') {
    print('первая буква строки равна `a`');
  } else {
    print('первая буква строки не равна `a`');
  }

  // 5 задание
  int randomSeasonNum = Random().nextInt(4) + 1;
  String result;
  print('Номер сезона: $randomSeasonNum');

  if (randomSeasonNum == 1) {
    result = 'Зима';
    print('Сезон $result');
  } else if (randomSeasonNum == 2) {
    result = 'Весна';
    print('Сезон $result');
  } else if (randomSeasonNum == 3) {
    result = 'Лето';
    print('Сезон $result');
  } else {
    result = 'Осень';
    print('Сезон $result');
  }

  // 6 задание
  int a = -3;
  if (a < 0) {
    print('Верно');
  } else {
    print('Неверно');
  }

  // 7 задание
  String numbers = '223322';
  int firstSum =
      int.parse(numbers[0]) + int.parse(numbers[1]) + int.parse(numbers[2]);
  int secondSum =
      int.parse(numbers[3]) + int.parse(numbers[4]) + int.parse(numbers[5]);

  print('Сумма первых 3 цифр = $firstSum');
  print('Сумма вторых 3 цифр = $secondSum');

  if (firstSum == secondSum) {
    print('Cумма первых трех цифр равняется сумме вторых трех цифр');
  } else {
    print('Cумма первых трех цифр НЕ равняется сумме вторых трех цифр');
    ;
  }

  // 8 задание

  String trafficLightColor = 'красный';

  if (trafficLightColor == 'красный') {
    print('Горит красный цвет стойте');
  } else if (trafficLightColor == 'желтый') {
    print('Горит желтый цвет приготовьтесь');
  } else if (trafficLightColor == 'зеленый') {
    print('Горит зеленый цвет можно идти');
  } else {
    print('Светофор сломан');
  }
}
