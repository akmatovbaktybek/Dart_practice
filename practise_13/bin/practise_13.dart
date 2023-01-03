void main(List<String> arguments) {
  // getAbbreviation('Thank George It`s Friday');
  // String lcd = 'Go-and-play pc or ps';
  // getAbr(lcd);
  showTriangleType(1, 2, 3);
}

showTriangleType(int a, int b, int c) {
  if (a <= 0 || b <= 0 || c <= 0) {
    print('Треугольник не может существовать');
  } else if (a + b < c || a + c < b || b + c < a) {
    print('Треугольник не может существовать');
  } else if (a == b && a == c && b == c) {
    print('Треугольник равносторонний');
  } else if (a == b || a == c || b == c) {
    print('Треугольник равнобедренный');
  } else {
    print('Треугольник разносторонний');
  }
}

getAbbreviation(String word) {
  List abb = word.split(' ');
  String firstletter = abb.map((e) => e.split('')[0]).join('').toUpperCase();
  // for (int i = 0; i < abb.length; i++) {
  //   abb[i].split('')[0]
  // }
  print(firstletter);
}

int throwDrotic(int y, int x) {
  int score = 0;
  // x = x.abs();
  // y = y.abs();
  if (x >= 0 && x <= 1 && y >= 0 && y <= 1) {
    score = 10;
  } else if (x > 1 && x < 6 && y > 1 && y <= 6) {
    score = 5;
  } else if (x > 5 && x < 11 && y > 5 && y <= 11) {
    score = 1;
  } else {
    score;
  }
  print(score);
  return score;
}

getAbr(String word) {
  List list = word.split(' ');
  String result = '';
  for (int i = 0; i < list.length; i++) {
    if (list[i].contains('-')) {
      list[i].split('-').forEach((e) {
        result = result + e.toString().split('')[0].toUpperCase();
      });
    } else {
      result = result + list[i].toString().split('')[0].toUpperCase();
    }
  }
  print(result);
}
