import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Subject:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Your action here
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("All"),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Sort by:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Your action here
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Do first"),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}