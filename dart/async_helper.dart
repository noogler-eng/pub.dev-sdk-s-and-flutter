import 'dart:async';

void main() async {
  print('start of main func');

  // acts like a seprate function or new line emeges in the event loop, 
  // so it will not block the execution of the main function.
  giveResultAfter2Sec().then((x){
    print('Result received');
  }); 

  print('end of main func');

  // printNumbers().listen((num){
  //   print('Number received: $num');
  // });

  asyncStreamContoller().listen((num){
    print('Number received: $num');
  });
}

Future<String> giveResultAfter2Sec() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Result after 2 seconds';
}

// whenever we want stream we need to use async* and yield keyword to 
// return the value from the stream.
// yield - produce a value or provide
Stream<int> printNumbers() async* {
  for (int i = 1; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> asyncStreamContoller() {
  final controller = StreamController<int>();
  controller.sink.add(10);
  controller.stream.listen((event) {
    print('Event received: $event');
  });

  controller.close();

  return Stream.periodic(Duration(seconds: 1), (count) => count).take(5);
}