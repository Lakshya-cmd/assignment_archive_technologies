import 'package:flutter/material.dart';

import 'helper.dart';
import 'scoreScreen.dart';

class Archivescreen extends StatefulWidget {
  const Archivescreen({super.key});

  @override
  State<Archivescreen> createState() => _ArchivescreenState();
}

class _ArchivescreenState extends State<Archivescreen> {
  final String _scores = "3:7";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/icons/app_logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.notifications,
                      size: 35,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.purple[200],
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.purple[200],
                  ),
                  child: const Center(
                      child: Text(
                    "10 November 2024",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.purple[200],
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Wrap ListView in an Expanded widget
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                                scores: _scores,
                              )));
                },
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Helper(
                      scores: _scores,
                    ).build(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
