import 'dart:math';

void main() {
  // 1 задание
  getNumSquare(int a) {
    return pow(a, 2);
  }

  var numSquare = getNumSquare(4);
  print('Квадрат чиcла: $numSquare');

  // 2 задание
  getSumOfNum(int num1, int num2) {
    int sumNum = num1 + num2;
    return sumNum;
  }

  var sumOfNum = getSumOfNum(10, 40);
  print('Сумма чисел: $sumOfNum');

  // 3 задание

  getResultOfExpression(int a1, int b1, int c1) {
    var result = (a1 - b1) / c1;
    return result;
  }

  var resultOfExpression = getResultOfExpression(16, 7, 4);
  print('Результат выражения $resultOfExpression');

  // 5 задание
  getMinuteToSec(int minute) {
    var minuteToSec = minute * 60;
    return minuteToSec;
  }

  var seconds = getMinuteToSec(5);
  print('Результат перевода в секунды: $seconds секунд');

  // 6 задание
  List array = [1, 3, 4, 5, 6];
  getListsFirstElement(list) {
    return list[0];
  }

  var firstElem = getListsFirstElement(array);

  print('Первый элемент массива: $firstElem');

  // 7 задание
  bool boolValue = false;
  if (boolValue == true) {
    print('Ваша переменная имеет значение: $boolValue');
  } else {
    print('Ваша переменная имеет значение: $boolValue');
  }

  // 8 задание
  showValue(var number) {
    if (number <= 0) {
      return true;
    } else {
      return false;
    }
  }

  var value = showValue(-34);
  print('Результат: $value');
}
