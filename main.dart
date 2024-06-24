import 'package:destini_forest/story_brain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: destini_forest()),
    ),
  );
}
 StoryBrain story_brain =StoryBrain();
class destini_forest extends StatefulWidget {
  const destini_forest({super.key});

  @override
  State<destini_forest> createState() => _destini_forestState();
}

class _destini_forestState extends State<destini_forest> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 400, // Define the width you want
                height: 150,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20.0), // Add rounded corners
                ),
              child: Center(
                child: Text(
                  story_brain.getStory(),
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ),
            ),
            SizedBox(
              height: 500.0,
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
                 story_brain.nextStory(1);
               });
              },

              child: Text(
               story_brain.getchoiceA(),
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
                 story_brain.nextStory(2);
               });
              },
              child: Text(
               story_brain.getchoiceB(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
