import 'package:app_one/Activity2.dart';
import 'fragment/AlarmFragment.dart';
import 'fragment/BalanceFragment.dart';
import 'fragment/ContactFragment.dart';
import 'fragment/EmailFragment.dart';
import 'fragment/HomeFragment.dart';
import 'fragment/PersonFragment.dart';
import 'fragment/SearchFragment.dart';
import 'fragment/SettingsFragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarActivity3 extends StatelessWidget {
  String msg3;
  TabbarActivity3(
      this.msg3,
      {super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Tab bar'),
            bottom: TabBar(
              isScrollable: true,
              tabs:[
                Tab(icon: Icon(Icons.home), text:'Home'),
                Tab(icon: Icon(Icons.search), text:'Search'),
                Tab(icon: Icon(Icons.settings), text:'Settings'),
                Tab(icon: Icon(Icons.email), text:'Email'),
                Tab(icon: Icon(Icons.contact_page), text:'Contact'),
                Tab(icon: Icon(Icons.person), text:'Person'),
                Tab(icon: Icon(Icons.access_alarm), text:'Alarm'),
                Tab(icon: Icon(Icons.balance), text:'Balance')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingsFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),
            ],
          )
        )
    );
  }
}