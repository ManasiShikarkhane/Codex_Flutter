import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todofire/models/Tasks.dart';

class TaskList extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  TaskList({
    required this.categoryId,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    // created "Tasks" collection on firestore
    final CollectionReference tasksRef =
        FirebaseFirestore.instance.collection('tasks');

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 199, 217, 167),
          title: Text(categoryName)),
      body: StreamBuilder<QuerySnapshot>(
        stream: tasksRef.where('categoryId', isEqualTo: categoryId).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          // converted firestore tasks colection data to our model class
          final List<Task> tasks =
              snapshot.data!.docs.map((doc) => Task.fromSnapshot(doc)).toList();

          return Container(
            color: const Color.fromARGB(255, 191, 224, 234),
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 620,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 184, 133, 150)
                          .withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: ListTile(
                    title: Text(task.title),
                    trailing: Checkbox(
                      value: task.isCompleted,
                      onChanged: (newValue) async {
                        await tasksRef.doc(task.id).update({
                          'isCompleted': newValue,
                        });
                      },
                    ),
                    onLongPress: () async {
                      await tasksRef.doc(task.id).delete();
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context, tasksRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, CollectionReference tasksRef) {
    final TextEditingController _controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter task title',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  String taskTitle = _controller.text.trim();
                  if (taskTitle.isNotEmpty) {
                    await tasksRef.add({
                      'categoryId': categoryId,
                      'title': taskTitle,
                      'isCompleted': false,
                      'timestamp': FieldValue
                          .serverTimestamp(), // Add the timestamp field
                    });

                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Task'),
              ),
            ],
          ),
        );
      },
    );
  }
}
