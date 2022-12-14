import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print('Игра в кости против компьютера');

  List<String> dices = [
    '''
      
      _____
     |  1  |
     |_____| ''',
    '''
      
      _____
     |  2  |
     |_____| ''',
    '''
      
      _____
     |  3  |
     |_____| ''',
    '''
      
      _____
     |  4  |
     |_____| ''',
    '''
     
      _____
     |  5  |
     |_____| ''',
    '''
    
      _____
     |  6  |
     |_____| '''
  ];
  int playerFirstDice = Random().nextInt(6) + 1;
  int playerSecondDice = Random().nextInt(6) + 1;
  int compFirstDice = Random().nextInt(6) + 1;
  int compSecondDice = Random().nextInt(6) + 1;

  rollTheDicePlayer() {
    print('Ваш черед бросать кости, нажмите x чтобы начать');
    String? a = stdin.readLineSync();
    if (a == 'x') {
      return print(
          'У вас выпало ${dices[playerFirstDice]} ${dices[playerSecondDice]}');
    } else {
      return print('Введите x');
    }
  }

  rollTheDiceComp() {
    print('Очередь компьютера бросать кости, нажмите x чтобы начать');
    String? a = stdin.readLineSync();
    if (a == 'x') {
      return print(
          'У компьютера выпало ${dices[compFirstDice]} ${dices[compSecondDice]}');
    } else {
      return print('Введите x');
    }
  }

  compareThescore() {
    int playerScore = playerFirstDice + 1 + playerSecondDice + 1;
    int compScore = compFirstDice + 1 + compSecondDice + 1;
    if (playerFirstDice + playerSecondDice > compFirstDice + compSecondDice) {
      print(
          'Вы победили, вы набрали $playerScore, компьютер набрал $compScore');
    } else if (playerFirstDice + playerSecondDice ==
        compFirstDice + compSecondDice) {
      print('Ничья, вы набрали $playerScore, компьютер набрал $compScore');
    } else {
      print(
          'Победил компьютер, вы набрали $playerScore, компьютер набрал $compScore');
    }
  }

  rollTheDicePlayer();
  rollTheDiceComp();
  compareThescore();
}
