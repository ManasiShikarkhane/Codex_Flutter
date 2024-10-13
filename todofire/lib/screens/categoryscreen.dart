import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todofire/models/category.dart';
import 'package:todofire/screens/taskscreen.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // created a categories collection on firestore
    final CollectionReference categoriesRef =
        FirebaseFirestore.instance.collection('categories');

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 199, 217, 167),
          title: const Text('Categories')),
      body: StreamBuilder<QuerySnapshot>(
        stream: categoriesRef.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          // coverted firestore data(documetapshot data) ito our model class Category
          final List<Category> categories = snapshot.data!.docs
              .map((doc) => Category.fromSnapshot(doc))
              .toList();

          return Container(
            color: const Color.fromARGB(255, 224, 203, 235),
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];

                return Slidable(
                  startActionPane: ActionPane(
                    motion: const BehindMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: Colors.blue,
                        icon: Icons.share,
                        label: 'Share',
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: Colors.green,
                        icon: Icons.call,
                        label: 'Call',
                      ),
                    ],
                  ),
                  endActionPane: ActionPane(
                    motion: const BehindMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 620,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 137, 171)
                            .withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ListTile(
                      //tileColor: const Color.fromARGB(255, 120, 107, 114),
                      title: Text(category.name),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskList(
                                categoryId: category.id,
                                categoryName: category.name),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context, categoriesRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBottomSheet(
      BuildContext context, CollectionReference categoriesRef) {
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
                  labelText: 'Enter category name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  String categoryName = _controller.text.trim();
                  if (categoryName.isNotEmpty) {
                    await categoriesRef.add({
                      'name': categoryName,
                      'timestamp': FieldValue
                          .serverTimestamp(), // Add the timestamp field
                    });

                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Category'),
              ),
            ],
          ),
        );
      },
    );
  }
}
