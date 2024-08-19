import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());//application create and pass here
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       theme: ThemeData(primarySwatch: Colors.red),
       darkTheme: ThemeData(primarySwatch: Colors.blue),
       color: Colors.blue,
       debugShowCheckedModeBanner: false,
       home: HomeActivity()

   );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  //a function to work in app bar:
  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('App_one'),
       titleSpacing: 1,
       toolbarHeight: 60, //60 is default
       toolbarOpacity: 0.9,
       elevation: 4,
       backgroundColor: Colors.deepOrange,
       actions: [
         IconButton(onPressed:(){MySnackBar("This is a Comment", context);}, icon: Icon(Icons.account_balance_wallet)),
         IconButton(onPressed:(){MySnackBar("This is a Search", context);}, icon: Icon(Icons.search)),
         IconButton(onPressed:(){MySnackBar("This is a Settings", context);}, icon: Icon(Icons.settings)),
       ],

     ),
     floatingActionButton: FloatingActionButton(
       elevation: 10,
       child: Icon(Icons.add),
       backgroundColor: Colors.amber,
       onPressed: (){
         MySnackBar('Add from this button', context);
       },

     ),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Call"),
         BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Contact")
       ],
       onTap: (int index){
         if(index == 0){
           MySnackBar('I am Home', context);
          }
         if(index == 1){
           MySnackBar('I am Call', context);
         }
         if(index == 2){
           MySnackBar('I am Contacts', context);
         }
       },
     ),
     drawer: Drawer(
       child: ListView(
         children: [
           DrawerHeader(
               padding: EdgeInsets.all(0),
               child: UserAccountsDrawerHeader(
                 decoration: BoxDecoration(color: Colors.black), accountName: Text("Rahman Mahbubur"), accountEmail: Text('Mahbub@gmail.com'),
             
           ) ),
           ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnackBar('Home', context);},),
           ListTile(leading: Icon(Icons.person_off), title: Text("Profile"), onTap: (){MySnackBar('Profile', context);}),
           ListTile(leading: Icon(Icons.email), title: Text("Email"), onTap: (){MySnackBar('Email', context);}),
           ListTile(leading: Icon(Icons.phone), title: Text("Phone"), onTap: (){MySnackBar('Phone', context);}),
           ListTile(leading: Icon(Icons.contact_page), title: Text("Contacts"), onTap: (){MySnackBar('Contacts', context);})
         ],
       ),
     ),
     body: Text('Hello'),
     // drawer: (),
     // endDrawer: (),
     // bottomNavigationBar: (),
     // floatingActionButton: (),

   );
  }

}