void main(List<String> arguments) {
  // первое задание
  Country kyrgyzstan = Country(name: 'Кыргызстан', climate: 'Континентальный');
  kyrgyzstan.getInfo();

  // второе задание

  Car toyota = Car(
      power: 275,
      color: 'Черный',
      name: 'Chevrolet',
      model: 'Camaro',
      price: 44000);
  toyota.getCarInfo();

  // третье задание Класс Phone.
  List numbersToSendMessage = [4453435, 243352, 3245546];
  int phoneNumber = 8548647;
  String calledName = 'Линус Торвальт';
  String calledName2 = 'Начальник';
  String calledName3 = 'Илон Маск';
  Phone iphone = Phone(number: 0704280902, model: 'Iphone 14 Pro', weight: 200);
  iphone.getPhoneinfo();
  iphone.receiveCall(calledName);
  print(iphone.getNumber(phoneNumber));
  iphone.sendMessage(numbersToSendMessage);

  Phone samsung =
      Phone(number: 0500280902, model: 'Samsung S 22 Ultra', weight: 220);
  samsung.getPhoneinfo();
  samsung.receiveCall(calledName2);
  print(samsung.getNumber(phoneNumber));

  Phone googlPixel =
      Phone(number: 0600280902, model: 'Google Pixel 7 Pro', weight: 190);
  googlPixel.getPhoneinfo();
  googlPixel.receiveCall(calledName3);
  print(googlPixel.getNumber(phoneNumber));

  // Четвертое задание Читатели библиотеки
  List books = ['Приключения', 'Словарь', 'Энциклопедия'];
  Reader baktybek = Reader(
      fio: 'Акматов Б.К.',
      numberOfLibraryCard: 3354,
      department: 'Програмная инженерия',
      birthDate: '28.09.2002',
      phone: 704280902);

  // Book jkRowling = Book(
  //     bookName: 'Гарри Поттер и Философский камень',
  //     bookAuthor: 'Джоан Роулинг');
  // Book stivenKing = Book(bookName: 'Сияние', bookAuthor: 'Стивен Кинг');
  // Book chakPalanik =
  //     Book(bookName: 'Бойцовский клуб', bookAuthor: 'Чак Паланик');
  // List goodBooks = [jkRowling, stivenKing, chakPalanik];
  baktybek.takeBook(books);
  baktybek.returnBook(books);
}

class Reader {
  String fio;
  int numberOfLibraryCard;
  String department;
  String birthDate;
  int phone;

  Reader(
      {required this.fio,
      required this.numberOfLibraryCard,
      required this.department,
      required this.birthDate,
      required this.phone});

  void getReaderInfo() {
    print(
        'ФИО: $fio, Номер читательского билета: $numberOfLibraryCard, Факультет: $department, Дата рождения: $birthDate, Номер телефона $phone');
  }

  void takeBook(List books) {
    print('$fio взял ${books.length} книги');
    print('$fio взял книги: $books');
  }

  void returnBook(List books) {
    print('$fio вернул ${books.length} книги');
    print('$fio вернул книги: $books');
  }
}

class Book {
  String bookName;
  String bookAuthor;

  Book({required this.bookName, required this.bookAuthor});
  // void getBookName() {
  //   print('$bookName');
  // }
}

class Phone {
  int number;
  String model;
  int weight;

  Phone({required this.number, required this.model, required this.weight});
  void getPhoneinfo() {
    print('Номер: $number, Модель: $model, Вес: $weightг');
  }

  void receiveCall(String name) {
    print('Звонит $name');
  }

  int getNumber(int phone) {
    return phone;
  }

  void sendMessage(List numbers) {
    print('Номера, которым будет отправлено сообщение: $numbers');
  }
}

class Car {
  int power;
  String color;
  String name;
  String model;
  int price;
  Car(
      {required this.power,
      required this.color,
      required this.name,
      required this.model,
      required this.price});
  void getCarInfo() {
    print(
        'Название $name, Модель: $model, Мощность: $power лошадинных сил, Цвет: $color,  Цена: $price\$');
  }
}

class Country {
  String name;
  String climate;

  Country({required this.name, required this.climate});

  void getInfo() {
    print('Страна: $name, Климат $climate');
  }
}

class Developer {
  String name;
  List<int> salary;

  Developer({required this.name, required this.salary});

  double getAvarageSalary() {
    int sum = 0;
    for (int el in salary) {
      sum += el;
    }
    return sum / salary.length;
  }
}

class Human {
  String name;
  int age;
  int number;

  Human({required this.name, required this.age, required this.number});

  void printame() {
    print(name);
  }

  @override
  String toString() {
    return 'name: $name, age: $age, number: $number';
  }
}
