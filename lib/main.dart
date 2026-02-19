import 'package:assignment/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbih Counter application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.indigo),
      ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title,)),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              SizedBox(height: 20,),
              Text('$counter', style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),

                    onPressed: _incrementCounter,
                    child: Text("Increment"),
                  ),

                  SizedBox(width: 12,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: _decrementCounter,
                    child: Text("Decrement"),
                  ),

                  SizedBox(width: 12,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: _resetCounter,
                    child: Text("Reset"),
                  ),


                  // Elevate Button Create



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
