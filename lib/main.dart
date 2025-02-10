import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            //toolbarHeight: 60,
            backgroundColor: Colors.orange,
            title: const Text(
              "Points Counter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$teamA",
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamA++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamA += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 2 points",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamA += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 3 points",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 400, // Set height to match content
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 20,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$teamB",
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamB++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamB += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 2 points",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamB += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50)),
                            child: const Text(
                              "Add 3 points",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamA = 0;
                      teamB = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(180, 50)),
                  child: const Text(
                    "Reset",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
