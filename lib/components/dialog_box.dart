import 'package:flutter/material.dart';
import 'package:todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        padding: const EdgeInsets.all(10.0),
        width: 300,
        height: 150,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Add a new task...',
                hintStyle: TextStyle(fontSize: 18),
              ),
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),
                const SizedBox(width: 10),
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
