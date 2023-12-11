import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 8, top: 16),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          "https://images.unsplash.com/photo-1701990630137-005958559f36?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8",
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 16),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$500',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 16, top: 8, right: 32),
          child: const Text(
            'John',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.network(
              "https://images.unsplash.com/photo-1701886133518-6562601e8e3d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fitWidth,
              width: 100,
              height: 100,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1701886133518-6562601e8e3d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fitWidth,
              width: 100,
              height: 100,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1701886133518-6562601e8e3d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fitWidth,
              width: 100,
              height: 100,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1701886133518-6562601e8e3d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fitWidth,
              width: 100,
              height: 100,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1701886133518-6562601e8e3d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fitWidth,
              width: 100,
              height: 100,
            ),
          ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ).copyWith(left: 16),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
      ],
    );
  }
}
