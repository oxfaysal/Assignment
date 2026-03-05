import 'package:assignment/conts/App_Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food UI",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset("assets/images/food.png"),
            ),

            SizedBox(height: 50),

            Text(
              "Cheeseburger Wendy's Burger",
              style: AppTextStyle.titleBlack25,
            ),
            SizedBox(height: 15,),
            Text(
              "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
              style: AppTextStyle.titleBlack16,
            ),
          ],
        ),
      ),
    );
  }
}
