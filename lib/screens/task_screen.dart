
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_bloc/models/task_model.dart';

class TaskScreen extends StatelessWidget {
   TaskScreen({super.key});
  List<TaskModel> taskList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("taskApp"),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.add)),
        ],
       ),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             Center(
              child: Chip(label: Text("Tasks")),
             )
        ],
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: Icon(Icons.add),),
    );
  }
}
