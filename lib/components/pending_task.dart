import 'package:flutter/material.dart';

class PendingTask extends StatelessWidget {
  const PendingTask({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Tuesday 6",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text("4 Task", style: TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
        IconButton(
            onPressed: () {
              null;
            },
            icon: Icon(Icons.calendar_month)),
      ],
    );
  }
}
