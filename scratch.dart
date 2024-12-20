import 'dart:io';

void main(){
  performTasks();
}

void performTasks() async{
  task1();
  print(task2());
  //String task2Resulte = await task2();
  //task3(task2Resulte);
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async{
  Duration threeSeconds = Duration(seconds: 3);
  //sleep(threeSeconds);

  //비동기 메소드
  String result = await Future.delayed(threeSeconds, (){
    print('Task 2 complete');
    return 'task 2 data';
  });
  return result;
}

void task3(String task2Data){
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}