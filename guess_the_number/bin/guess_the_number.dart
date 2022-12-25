import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int randomNumber = Random().nextInt(100) + 1;
  print('Игра: "Угадай чиcло"');
  print('Введите "start" чтобы начать');
  String userStartGame = stdin.readLineSync() ?? 'start';
  // print('Рандомное число $randomNumber');
  void startGame() {
    print('Загадано число от 1 до 100, попробуйте отгадать число');
    int amount = 0;
    for (int i = 0; i < 100; i++) {
      print('Введите число');
      int userNumber = int.parse(stdin.readLineSync() ?? '0');
      if (userNumber == randomNumber) {
        print('Поздравляем вы отгадали число');
        break;
      } else if (userNumber < randomNumber) {
        print('Загаданное число больше');
      } else {
        print('Загаданное число меньше');
      }
      amount++;
    }
    print('Количество попыток: $amount');
  }

  if (userStartGame == 'start') {
    startGame();
  } else {
    print('Введите "start" чтобы начать');
  }
}
