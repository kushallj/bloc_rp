import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(runApp(MultiBlocProvider(providers: [
    BlocProvider<TodoBloc>(create: (context) => TodoBloc(todoService: TodoService())),
  ], child: GetMaterialApp(home: Home()))););
}

class Home extends  StatelessWidget{
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Obx(()=> Text('Click:'))),
        body: Centre(child: ElevatedButton(child: const Text('get'),onPressed: (){})));
  }
}

