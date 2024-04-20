import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Add Task", textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent,),
            ),
            const TextField(autofocus: true, textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Enter Your Message",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.lightBlueAccent,
                ),
              ),
              onPressed: () {},
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
