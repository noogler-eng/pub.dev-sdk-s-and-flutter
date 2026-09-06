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

}

