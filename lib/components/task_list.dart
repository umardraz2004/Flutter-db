import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key, required this.tasks, required this.onTaskTapped});
  final Function(String) onTaskTapped;
  final List<Map<String, dynamic>> tasks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[200],
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Icon(Icons.task),
            title: Text(tasks[index]['text']), // Access the 'text' field
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Tapped on ${tasks[index]['text']}'),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
