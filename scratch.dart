void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String taskResult = await task2();
  // como task2() tem um "await" ela precisa ser do tipo Future e também ter um async/await antes do return.
  task3(taskResult);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  //A classe Duration serve para eu definir um pedaço de tempo.
  String result;

  //O delayed é equivalente ao setTimeout no Javascript.
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
