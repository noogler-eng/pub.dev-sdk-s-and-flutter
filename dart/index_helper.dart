void main(){
  // records are immutable and can not be changed after initialization.
  // we can access by them $1, $2, $3, $4, $5, $6, $7, $8, $9
  final records = (4.5, 'anyone');
  print(records.$1);
  print(records.$2);

  // named arguments
  final namedRecords = (name: 'John', age: 30, 'hello');
  print(namedRecords.name);
  print(namedRecords.$1);


  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, _, c, ...d] = numbers;
  print('$a, $c, $d');


  final jsonData = {
    'name': 'John',
    'age': 30,
    'city': 'New York'
  };

  final {'name': name, 'age': age, 'city': city} = jsonData;
  print('$name, $age, $city');

  final human = Human('Alice', 25);
  final Human(name: humanName, age: humanAge) = human;
  print('$humanName, $humanAge');


  List<String> fruits = ['apple', 'banana', 'cherry'];
  int index = 0;
  switch (fruits){
    // swtich matching whole list, if we dont want to manth then we can use '_'
    case ['apple' || 'APPLE', _ , 'cherry' || 'CHERRY'] when index != 1:
      print('Found apple and cherry');
    default:
      print('No match');
  }

  String fruit = 'banana';
  fruit.capitalFirstLetter();
  print(fruit.capitalFirstLetter());
  print(fruit);
}


class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}

extension CapitalFirstLetter on String {
  String capitalFirstLetter() {
    return this[0].toUpperCase() + substring(1);
  }
}