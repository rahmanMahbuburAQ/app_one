import 'package:app_one/Activity2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity1 extends StatelessWidget {
  String msg1;
  Activity1(
      this.msg1,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg1)
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2("This data actvity1 to activity2")));
        }, child:Text('GO TO ACTIVITY2'))

      ),
    );
  }
}
