import 'package:assignment/conts/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'conts/appColor.dart';
import 'widgets/customButton.dart';

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

  int foodItem = 1;

  void _incrementCounter() {
    setState(() {
      foodItem++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (foodItem > 1) foodItem--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 330,
                width: double.infinity,
                child: Image.asset("assets/images/food.png"),
              ),
          
              Text(
                "Cheeseburger Wendy's Burger",
                style: AppTextStyle.titleBlack22,
              ),
          
              SizedBox(height: 6),
          
              ratingRow("4.9", "26 mins"),
          
              SizedBox(height: 12),
          
              Text(
                "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
                style: AppTextStyle.titleBlack16,
              ),
          
              SizedBox(height: 22),
          
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 40,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Spicy", style: AppTextStyle.textBlack14),
                        Slider(
                          value: 0.5,
                          onChanged: (value) {},
                          padding: EdgeInsets.all(0),
                          activeColor: AppColor.redColor,
                          inactiveColor: AppColor.secondaryColor.withOpacity(0.1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mild", style: AppTextStyle.textGreen12),
                            Text("Hot", style: AppTextStyle.textRed12),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Portion", style: AppTextStyle.textBlack14),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              onPressed: _decrementCounter,
                              text: '-',
                              color: AppColor.redColor,
                              width: 40,
                              height: 40,
                            ),
                            Text(foodItem.toString(), style: AppTextStyle.textBlack18),
                            CustomButton(
                              onPressed: _incrementCounter,
                              text: '+',
                              color: AppColor.redColor,
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26),
          
              Row(
                spacing: 40,
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomButton(
                      onPressed: (){},
                      text: "\$8.24",
                      color: AppColor.redColor,
                      width: double.infinity,
                      height: 70,
                      radius: 20,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: CustomButton(
                      onPressed: (){},
                      text: "ORDER NOW",
                      color: AppColor.primaryColor,
                      width: double.infinity,
                      height: 70,
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ratingRow(String rating, String time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.star, color: Colors.orange, size: 18),
        Text(
          " $rating — $time",
          style: TextStyle(color: Colors.grey[700], fontSize: 16),
        ),
      ],
    );
  }
}
