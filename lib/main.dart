import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.wifi, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Image with Overlay Text
            Stack(
              children: [
                Image.asset("assets/banner.jpg",
                    width: double.infinity, height: 200, fit: BoxFit.cover),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Jivachi Hotiya Kahili",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1972  •  Crime/Drama  •  2h 55m",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  SizedBox(height: 10),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          child: Text("FIRST EPISODE IS FREE",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink),
                          child: Text("SUBSCRIBE",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Description
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 10),

                  // Action Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text("Watch Later",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.thumb_up, color: Colors.white),
                          Text("Like", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.white),
                          Text("Share", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  // Episodes Section
                  Text("EPISODES",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("Season 1",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  SizedBox(height: 10),

                  // List of Episodes
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/ep${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name-${index + 1}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
