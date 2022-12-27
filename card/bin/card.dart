import 'dart:math';

void main(List<String> arguments) {
  List suit = ['Dimonds', 'Hearts', 'Clubs', 'Spades'];
  List<Card> deck = [];

  for (int j = 0; j < 4; j++) {
    for (int i = 6; i < 11; i++) {
      deck.add(Number(name: 'NUMBER $i', suit: suit[j], value: i));
    }
  }

  for (int i = 0; i < 4; i++) {
    Jack jack = Jack(name: 'JACK', suit: suit[i], value: 11);
    deck.add(jack);
  }

  for (int i = 0; i < 4; i++) {
    Queen queen = Queen(name: 'QUEEN', suit: suit[i], value: 12);
    deck.add(queen);
  }

  for (int i = 0; i < 4; i++) {
    King king = King(name: 'KING', suit: suit[i], value: 13);
    deck.add(king);
  }

  for (int i = 0; i < 4; i++) {
    Ace ace = Ace(name: 'ACE', suit: suit[i], value: 14);
    deck.add(ace);
  }

  // print(deck.length);
  // for (int i = 0; i < deck.length; i++) {
  //   print('${deck[i].name} ${deck[i].value} ${deck[i].suit}');
  // }

  print(
      'Your card is ${deck[Random().nextInt(36) + 0].name}  ${deck[Random().nextInt(36) + 0].suit}');
  print(
      'Computer card is ${deck[Random().nextInt(36) + 0].name}  ${deck[Random().nextInt(36) + 0].suit}');
}

class Card {
  String name;
  int value;
  String suit;

  Card({required this.name, required this.suit, required this.value});
}

class Number extends Card {
  Number({required super.name, required super.suit, required super.value});
}

class Jack extends Card {
  Jack({required super.name, required super.suit, required super.value});
}

class Queen extends Card {
  Queen({required super.name, required super.suit, required super.value});
}

class King extends Card {
  King({required super.name, required super.suit, required super.value});
}

class Ace extends Card {
  Ace({required super.name, required super.suit, required super.value});
}
