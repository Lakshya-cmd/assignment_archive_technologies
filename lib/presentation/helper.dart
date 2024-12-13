import 'package:flutter/material.dart';

class Helper extends StatelessWidget {
  final String scores;

  const Helper({Key? key, required this.scores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(alignment: Alignment.center, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.purple[100],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/scotland.png",
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Liga Professionals",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    const Text(
                      "01:45",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/team1.png",
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "River Plate",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      scores,
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/team2.png",
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Barraces Central",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1-over(0.5)",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        "assets/images/football.png",
                        height: 20,
                        width: 20,
                      ),
                      VerticalDivider(
                        color: Colors.green[700],
                        thickness: 2,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "1.10",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 1,
          child: Container(
            height: 25,
            width: 70,
            color: Colors.green,
            child: const Center(
              child: Text(
                "WIN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
