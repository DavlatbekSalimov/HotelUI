import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final String topLefttext;
  const CounterWidget({
    super.key,
    required this.topLefttext,
  });

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.topLefttext,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 53,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.black54),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (count == 0) {
                      count = 0;
                    } else {
                      count--;
                    }
                  });
                },
                icon: Icon(Icons.remove),
              ),
              Text(
                '$count',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
