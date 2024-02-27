part of 'todo_bloc.dart';

abstract class TodoState{
  const TodoState();
}

class UninitializedState extends TodoState{}

class GettingTodoState extends TodoState{}

class TodoReceivedState extends TodoState{
  TodoReceivedState({required this.todos});

  final List todos;

  List<Object> get props => [todos];
}

class GettingTodoErrorState extends TodoState {

  final String message;

  List<Object> get props => [message];
}