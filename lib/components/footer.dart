import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Your action here
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 8),
                    Text("Home"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Your action here
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 8),
                    Text("Calender"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Your action here
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.book),
                    SizedBox(width: 8),
                    Text("Books"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Your action here
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 8),
                    Text("Calender"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
