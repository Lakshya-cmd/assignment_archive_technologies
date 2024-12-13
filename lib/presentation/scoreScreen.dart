// import 'package:assignment_archive_technologies/presentation/archiveScreen.dart';
import 'package:flutter/material.dart';

import 'helper.dart';

class ScoreScreen extends StatefulWidget {
  final String scores;
  const ScoreScreen({Key? key, required this.scores}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Helper(
              scores: widget.scores,
            ),
          ),
        ));
  }
}
