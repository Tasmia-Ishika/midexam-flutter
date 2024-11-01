import 'package:flutter/material.dart';

void main() {
  runApp(FoodPandaApp());
}

class FoodPandaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodPandaHome(),
    );
  }
}

class FoodPandaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light background similar to the image
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[200],
        title: Text("Food Panda", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            // Food Panda Logo and Heading
            Column(
              children: [
                Image.asset(
                  'assets/panda_icon.png', // Replace with the path to your logo image
                  height: 70,
                ),
                SizedBox(height: 10),
                Text(
                  "foodpanda",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[200],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Are you hungry? Order Now . . .",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Set Menu Title
            Text(
              "SET MENU",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Menu Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  MenuItem(icon: Icons.local_pizza, label: "Pizza"),
                  MenuItem(icon: Icons.fastfood, label: "Burger"),
                  MenuItem(icon: Icons.local_drink, label: "Juice"),
                  MenuItem(icon: Icons.rice_bowl, label: "Fried Rice"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  MenuItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pinkAccent[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
