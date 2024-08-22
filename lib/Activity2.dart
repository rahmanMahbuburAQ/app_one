import 'package:app_one/Activity1.dart';
import 'package:app_one/TabbarActivity3.dart';
import 'package:app_one/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity2 extends StatelessWidget {
  String msg2;
  Activity2(
      this.msg2,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Activity2')
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center the column content
          children: [
            Text(
              'Welcome to Activity 2 [$msg2]', // The text you want to display
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
                        TabbarActivity3('activity2->TabbarActivity3'),
                  ),
                );
              },
              child: Text('GO TO Tab Bar'),
            ),
            //card
            Card(
              elevation: 30,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
              color: Color.fromRGBO(5, 7, 244, 0.6),
              shadowColor: Colors.red,
              child: SizedBox(
                height: 200,
                  width: 150,





                  child: Center(child: Text('This is card!')),
              ),
            ),
          ],
        )
      ),
    );
  }
}
