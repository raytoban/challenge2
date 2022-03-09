import 'package:flutter/material.dart';
import 'Chooser.dart';

void main() => runApp(MyApp());
Chooser choice = Chooser();

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade100,
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: StoryPage()),
        ),
      ),
    );
  }
}

class StoryPage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Challenge 2",
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  choice.getStoryText(),
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    choice.nextStory(1);
                  });
                },
                child: Text(
                  choice.getStoryChoice1(),
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    choice.newStory(2);
                  });
                },
                child: Text(
                  choice.getStoryChoice2(),
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
