import 'dart:io';

void main() {
   performTasks();
   final result = File('/Users/English/unt.txt').readAsString();
   result.then((value) => print(value));
   print(1);
   print(2);
   var waitingFuture =  Future<Object>.delayed(Duration(seconds: 5));
   waitingFuture.then((value) => print(4));
   for (var i = 0; i < 7; i++) {
     print(i);
     sleep(Duration(seconds: 1));
  }
  final url =  Uri.parse("https://api.flutter.dev/");
   final futurePage = HttpClient().getUrl(url);
   futurePage.then((value) => print(value));
}
void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSecond = Duration(seconds: 2);
  String result;
  await Future.delayed(threeSecond, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}