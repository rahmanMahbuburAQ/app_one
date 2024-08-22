import 'package:app_one/Activity2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity1 extends StatelessWidget {
  String msg1;

  Activity1(this.msg1,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Activity 1")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center the column content
          children: [
            Text(
              'Welcome to Activity 1 [$msg1]', // The text you want to display
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Add some space between the text and the button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Activity2("This data from activity1 to activity2"),
                  ),
                );
              },
              child: Text('GO TO ACTIVITY2'),
            ),
            //card
            Card(
              elevation: 30,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
              color: Color.fromRGBO(255, 7, 9, 0.6),
              shadowColor: Colors.green,
              child: SizedBox(
                height: 200,
                width: 150,

                child: Center(child: Text('This is card!')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
