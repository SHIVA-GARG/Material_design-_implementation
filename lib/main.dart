import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tab_controller;
  @override
  void initState(){
    super.initState();
    tab_controller = TabController(length: 2,vsync: this);
  }

  @override
  void dispose(){
    tab_controller.dispose();
    this.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("widget app"),
      bottom:  TabBar(
          controller: tab_controller,
          tabs: [
            new Tab(
              icon: new Icon(Icons.face),
            ),
            new Tab(
              icon: new Icon(Icons.image_rounded),
            ),
          ],
        ),
      
      ),
      body: TabBarView(
        children: [new NewPage("First Page"),new NewPage("Second Page")],
        controller: tab_controller,
        

      ),
      
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Center(child: Text(title),),
      ),
    );
  }
}























// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int current_step = 0;
//   List<Step> mySteps =[
//     new Step(
//       title: Text("Step 1"),
//       content: CircleAvatar(
//         backgroundColor: Colors.brown,
//         child: Text("Ab"),
//       ),
//       isActive: true ,
//     ),
//     new Step(
//       title: Text("Step 2"),
//       content: Text("Some content"),
//       isActive: true,
//     ),
//     new Step(
//       title: Text("Step 3"),
//       content: Text("Some "),
//       isActive: true,
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("widget app"),
//       ),
//       body: new Container(
//         child: Stepper(
//            steps: mySteps,
//            currentStep: this.current_step,
//            type: StepperType.vertical,
//         ),
//       ),
//     );
//   }
// }





























// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter App"),
//       ),
//       body: MyBody(),
//     );
//   }
// }

// class MyBody extends StatelessWidget {
//   AlertDialog dialog = new AlertDialog(
//     content: new Text("dialog is up to date",style: TextStyle(fontSize: 20.0,color: Colors.red),),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: RaisedButton(
//           child: Text(
//             "Click Me",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           color: Colors.blue,
//           // ignore: deprecated_member_use
//           // onPressed: ()=>Scaffold.of(context).showSnackBar(
//           //   SnackBar(
//           //     content:Text("why did u clicked me") ,
//           //     duration: Duration(milliseconds: 5000),
//           //   )

//           onPressed: ()=>showDialog(context: context,child: dialog),
//           ),
//         ),
//       );
    
//   }
// }
