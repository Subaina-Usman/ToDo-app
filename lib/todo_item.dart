import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';
class todoitem extends StatelessWidget {
 final ToDo todo;
 final onToDoChanged;
 final onDeleteItem;
  const todoitem({Key? key, required this.todo,required this.onToDoChanged,required this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          //print('object');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.grey.shade100,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue.shade900,
        ),
        title: Text(
            todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration:todo.isDone? TextDecoration.lineThrough : null,
        ),),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red.shade900,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){
              //print('clicked on delete');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),

    );
  }
}
