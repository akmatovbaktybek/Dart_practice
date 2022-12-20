// import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  // Первое задание
  print('Первое задание');
  print('Введите число:');
  String userNumber = stdin.readLineSync() ?? '123';
  String getReversedUserNumber(String userNum) {
    String userNumList = userNumber.split('').reversed.join();
    return userNumList;
  }

  final result = getReversedUserNumber(userNumber);
  print('Результат: $result');
  print('');

// Второе задание не выполнено

  // print('Введите число');
  // int userFib = int.parse(stdin.readLineSync()!);

  // List getFibonacci(fibonacci) {
  //   List listUserNum = fibonacci.toString().split('');
  //   List max = [0];
  //   for (int i = 0; i < listUserNum.length; i++) {
      // print(int.parse(listUserNum[i]).runtimeType);
  //     if (int.parse(listUserNum[i]) > max[i]) {
  //       int.parse(max) = int.parse(listUserNum[i]);
  //     }
  //   }
  //   return max;
  // }

  // List resultFibonacci = getFibonacci(userFib);
  // print('Result $resultFibonacci');

  //  Третье задание
  print('Третье задание');
  print('Введите число');
  String userSeriesNumbers = stdin.readLineSync() ?? '123';

  int getSumOfNumbers(String userSerNum) {
    int? userNum = int.tryParse(userSerNum);
    int sum = 0;
    for (int i = 1; i <= userNum!; i++) {
      sum += i;
    }
    return sum;
  }

  int resultUserSeriesNum = getSumOfNumbers(userSeriesNumbers);
  print('Сумма чисел: $resultUserSeriesNum');
  print('');

  // 4 задание
  print('Введите число');
  int userFib = int.parse(stdin.readLineSync()!);

  List getFibonacci(fibonacciNum) {
    List result = [0, 1];

    for (int i = 2; i <= fibonacciNum; i++) {
      int prevNum1 = result[i - 1];
      int prevNum2 = result[i - 2];

      result.add(prevNum1 + prevNum2);
    }

    return result;
  }

  List fibonArray = getFibonacci(userFib);
  print('Ряд чисел Фибоначчи $fibonArray');
}


  // print('Введите число');
  // int userFib = int.parse(stdin.readLineSync()!);

  // List getFibonacci(fibonacci) {
  //   List listUserNum = fibonacci.toString().split('');
  //   const result = [0, 1];

  //   for (int i = 0; i < listUserNum.length; i++) {
  //     print(int.parse(listUserNum[i]).runtimeType);
  //   }
  //   return listUserNum;
  // }

  // List resultFibonacci = getFibonacci(userFib);
  // print('Result $resultFibonacci');