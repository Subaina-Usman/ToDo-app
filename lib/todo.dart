class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'groceries', isDone: true),
      ToDo(id: '02', todoText: 'meetings', isDone: true),
      ToDo(id: '03', todoText: 'assignment',),
      ToDo(id: '04', todoText: 'homework',),
      ToDo(id: '05', todoText: 'drink water',),
      ToDo(id: '06', todoText: 'coding',),

    ];
  }
}

