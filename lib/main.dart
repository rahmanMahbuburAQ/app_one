import 'package:app_one/Activity1.dart';
import 'package:app_one/Activity2.dart';
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

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});


  //a function to work in app bar:
  MySnackBar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  //custom style for body button
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(15),
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
      )
  );

  //Button for Input field:
  ButtonStyle buttonInputStyle = ElevatedButton.styleFrom(
    minimumSize: Size(300, 50),
      //minimumSize: Size(double.infinity, 50),// double.infinity means full width
    backgroundColor: Colors.deepOrange,
    foregroundColor: Colors.white, // Text color
    side: BorderSide(color: Colors.black, width: 1), // Border color and width
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15), // Border radius
    ),// Set the border color and width
  );

  //Alert Dialog
  MyAlertDialog(context) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Expanded(
                child: AlertDialog(
                   title: Text('Alert!'),
                   content: Text('Want to Delete?'),
                  actions: [
                    TextButton(onPressed: (){
                      MySnackBar('Delete success', context);
                      Navigator.of(context).pop();
                    }, child: Text('Yes')),
                    TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'))
                  ],
                )
           );
        }
      );
  }




  @override
  Widget build(BuildContext context) {



   return Scaffold(
     appBar: AppBar(
       title: Text('Robot_one', style: TextStyle(color: Colors.white)),
       titleSpacing: 1,
       toolbarHeight: 60, //60 is default
       toolbarOpacity: 0.9,
       elevation: 4,
       backgroundColor: Colors.deepOrange,
       actions: [
         IconButton(onPressed:(){MySnackBar("This is a Comment", context);}, icon: Icon(Icons.account_balance_wallet), ),
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
                 decoration: BoxDecoration(color: Colors.deepOrange), accountName: Text("Rahman Mahbubur"), accountEmail: Text('Mahbub@gmail.com'), currentAccountPicture: Image.network("https://cdn.pixabay.com/photo/2024/03/20/03/06/ai-generated-8644499_640.jpg"), onDetailsPressed: (){MySnackBar("This is profile section", context);},
           ) ),
           ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnackBar('Home', context);},),
           ListTile(leading: Icon(Icons.person_off), title: Text("Profile"), onTap: (){MySnackBar('Profile', context);}),
           ListTile(leading: Icon(Icons.email), title: Text("Email"), onTap: (){MySnackBar('Email', context);}),
           ListTile(leading: Icon(Icons.phone), title: Text("Phone"), onTap: (){MySnackBar('Phone', context);}),
           ListTile(leading: Icon(Icons.contact_page), title: Text("Contacts"), onTap: (){MySnackBar('Contacts', context);})
         ],
       ),
     ),
     endDrawer: Drawer(
       child: ListView(
         children: [
           DrawerHeader(
               padding: EdgeInsets.all(0),
               child: UserAccountsDrawerHeader(
                 decoration: BoxDecoration(color: Colors.green), accountName: Text("Robot_One"), accountEmail: Text('robot_one@jp'), currentAccountPicture: Image.network("https://images.pexels.com/photos/8294657/pexels-photo-8294657.jpeg?auto=compress&cs=tinysrgb&w=600"), onDetailsPressed: (){MySnackBar("This is profile section", context);},
               ) ),
           ListTile(leading: Icon(Icons.local_activity), title: Text("Activity"), onTap: (){MySnackBar('Activity', context);},),
           ListTile(leading: Icon(Icons.work), title: Text("Working Area"), onTap: (){MySnackBar('Working Area', context);}),
           ListTile(leading: Icon(Icons.manage_accounts), title: Text("Management"), onTap: (){MySnackBar('Management', context);}),

         ],
       ),
     ),
     // body: Container(
     //   height: 300,
     //   width: 200,
     //   alignment: Alignment.topCenter,
     //   //margin: EdgeInsets.fromLTRB(100,10,10,30),
     //   margin: EdgeInsets.all(40),
     //   padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
     //   //color: Colors.blue,
     //   decoration: BoxDecoration(
     //     color: Colors.yellow,
     //     border: Border.all(color: Colors.black, width: 1)
     //   ),
     //   child: Text("HEllo"),
     // )

       //After learning Container of Body let's check Row and Column of Body(it is generally used for displaying images)
     // body: Column(
     //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     //   children: [
     //     Container(height:100, width: 100, child: Image.network('https://images.pexels.com/photos/8294666/pexels-photo-8294666.jpeg?auto=compress&cs=tinysrgb&w=600')),
     //     Container(height:100, width: 100, child: Image.network('https://images.pexels.com/photos/8566474/pexels-photo-8566474.jpeg?auto=compress&cs=tinysrgb&w=600')),
     //     Container(height:100, width: 100, child: Image.network('https://images.pexels.com/photos/185725/pexels-photo-185725.jpeg?auto=compress&cs=tinysrgb&w=600'))
     //   ],
     // ),
     body: SingleChildScrollView(
     child: Column(
       children: [
         SizedBox(height: 5), // Add some spacing between the text and the row
         Text(
           'Robot One Inc.', // Add your desired text here
           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
         ),
         SizedBox(height: 5),

         //naviagation to Activity1 and Activity2 screen:
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1('Data Home to Activity1')));
               }, child: Text('GO ACTIVITY1')),
             ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2('Data home to Activity2')));
               }, child: Text('GO ACTIVITY2')),
           ],
         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(padding:EdgeInsets.all(10), child: TextField(decoration: InputDecoration(label: Text('First Name'),border: OutlineInputBorder()),)),
             Padding(padding:EdgeInsets.all(10), child: TextField(decoration: InputDecoration(label: Text('Last Name'),border: OutlineInputBorder()),)),
             Padding(padding:EdgeInsets.all(10), child: TextField(decoration: InputDecoration(label: Text('Email Address'),border: OutlineInputBorder()),)),
             Padding(padding:EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, child:Text('Submit'), style: buttonInputStyle),)
           ],
         ), // Add some spacing between the text and the row
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               height: 200,
               width: 100,
               child: Image.network('https://images.pexels.com/photos/8294666/pexels-photo-8294666.jpeg?auto=compress&cs=tinysrgb&w=600'),
             ),
             Container(
               height: 200,
               width: 100,
               child: Image.network('https://images.pexels.com/photos/8566474/pexels-photo-8566474.jpeg?auto=compress&cs=tinysrgb&w=600'),
             ),
             Container(
               height: 200,
               width: 100,
               child: Image.network('https://images.pexels.com/photos/185725/pexels-photo-185725.jpeg?auto=compress&cs=tinysrgb&w=600'),
             ),
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               TextButton(onPressed: (){MySnackBar('Button message', context);}, child: Text('Button')),
               ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text('Elevated Button for Alert dialog'), style: buttonStyle),
               // OutlinedButton(onPressed: (){MySnackBar('Outline Button message', context);}, child: Text('Outline Button'))


             ],
         ),
       ],
     ),
     )
   );
  }
}