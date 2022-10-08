import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/provider/todo_list_provider.dart';
import 'package:todo_app/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList() : super();

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<TodoListProvider>(context);

    return Container(
      child: ListView.builder(
        itemCount: provider.todos.length,
        itemBuilder: (BuildContext context, int index) {
          return TodoItem(
            todo: provider.todos[index],
            onCheckboxChanged: (complete) {
              provider.toggleComplete(provider.todos[index].id.toString());
            },
          );
        },
      ),
    );
  }
}
