import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/user.dart';
import '../service/todo_service.dart';

part 'todo_event.dart';
part 'todo_state.dart';


class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc({required TodoService todoService})
      : _todoService = todoService,
        super(UninitializedState());

  final TodoService _todoService;

  TodoState get initialState => UninitializedState();

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
     if (event is GetTodoEvent){
      yield* _mapGetTodoEventToState(event);
    }
  }

  Stream<TodoState> _mapGetTodoEventToState(GetTodoEvent event) async* {
    yield GettingTodoState();
    try {
      final res = await _todoService.getTodos();
      yield TodoReceivedState(todos: res);
    } on Exception catch (e) {
      yield GettingTodoErrorState(message: e.toString());
    }
  }

}