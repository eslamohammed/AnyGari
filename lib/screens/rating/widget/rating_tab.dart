import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingTabScreen extends StatefulWidget {
  const RatingTabScreen({Key? key}) : super(key: key);

  @override
  State<RatingTabScreen> createState() => _RatingTabScreenState();
}

class _RatingTabScreenState extends State<RatingTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(4, (index) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                    ),
                  ),
                  title: RatingBar.builder(
                    glow: false,
                    itemSize: 20,
                    // ignoreGestures: true,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (BuildContext context, int index) =>const Icon(Icons.star,color: Colors.amberAccent,),
                    onRatingUpdate: (rating) {  },
              ),
                  subtitle: Text(lorem(paragraphs: 1, words: 15)),
            ),
          ))
        ),
      ),
    );
  }
}
