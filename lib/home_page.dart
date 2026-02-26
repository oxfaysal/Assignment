import 'package:assignment/conts/app_text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
                Text("Discover", style: AppTextStyle.titleBlack36,)
            ],
          ),
        ),
      ),
    );
  }
}
