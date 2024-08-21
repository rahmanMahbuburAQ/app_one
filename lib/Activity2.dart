import 'package:app_one/Activity1.dart';
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
            title: Text(msg2)
        ),
        body: Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeActivity()));
            }, child:Text('GO TO Home'))
        )
    );
  }
}