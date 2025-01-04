import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              null;
            },
            child: Text(
              'Subjects',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          TextButton(
            onPressed: () {
              null;
            },
            child: Text(
              'HomeWork',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              null;
            },
            child: Text(
              'Library',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
