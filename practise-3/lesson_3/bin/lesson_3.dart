void main() {
  // 1 задание
  List arr = [1, 7, 12, 3, 56, 2, 87, 34, 54];

  print('Первый элемент ${arr.first}');
  print('Пятый элемент ${arr[4]}');
  print('Последний элемент ${arr.last}');

  //2 Задание
  List firstArr = [3, 12, 43, 1, 25, 6, 5, 7];
  List secondArr = [55, 11, 23, 56, 78, 1, 9];

  List thirdArr = firstArr + secondArr;

  print(thirdArr);

  // 3 задание
  List flutter = [
    'a',
    'd',
    'F',
    'l',
    'u',
    't',
    't',
    'e',
    'R',
    'y',
    '3',
    'b',
    'h',
    'j'
  ];
  flutter.removeRange(0, 2);

  flutter.removeRange(7, 12);

  print(flutter);

  //  4 задание
  List nums = [1, 2, 3, 4, 5, 6, 7];
  print(nums.contains(3));

  print('First element ${nums.first}');
  print('Last element ${nums.last}');
  print('Nums length ${nums.length}');

// 5 задание
  List array = [601, 123, 2, "dart", 45, 95, "dart24", 1];

  print(array.contains('dart'));
  print(array.contains(951));

// 6 задание
  List array2 = ['post', 1, 0, 'flutter'];
  String myDart = 'Flutter';

  print(array2.contains(myDart.toLowerCase()));

// 7 задание
  List array3 = ["I", "Started", "Learn", "Flutter", "Since", "April"];
  String myFlutter = array3.join('*');

  print(myFlutter);

// другой способ
  // List array3 = ["I", "Started", "Learn", "Flutter", "Since", "April"];
  // String myFlutter = '*';

  // print(array3.join(myFlutter));

  // 8 задание

  List sortArr = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  sortArr.sort();
  print(sortArr);
}
