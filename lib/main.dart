import 'package:bloc_rp/bloc/todo_bloc.dart';
import 'package:bloc_rp/service/todo_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<TodoBloc>(create: (context) => TodoBloc(todoService: TodoService())),
  ], child: GetMaterialApp(home: Home())));
}

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Obx(() => Text("Clicks:"))),
        body: Center(child: ElevatedButton(child: const Text("Go to Other"), onPressed: () {})),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add)));
  }
}
