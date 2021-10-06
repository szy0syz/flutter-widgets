import 'package:flutter/material.dart';
import 'package:w04_list_view/square.dart';

import 'circle.dart';

class HomePage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // instagram stories
          Container(
            height: 170,
            padding: const EdgeInsets.only(top: 25),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: (context, index) {
                  return MyCircle(
                    child: _stories[index],
                  );
                }),
          ),

          // instagram posts
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _posts[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
