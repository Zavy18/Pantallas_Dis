import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {

        '/second': (context)=> SecondRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sing In',
              style: TextStyle(fontWeight: FontWeight.bold, 
              color: Colors.white,
              fontSize: 20)
            ),

            Form(
              child: Column(
              children: [
              Container(
                child: Align(
                  child:Text('Email'), 
                  alignment: Alignment.centerLeft)
                  ),
              TextFormField(
                decoration: 
                   const InputDecoration(hintText: "Enter your email"),
              ),
              Container(
                child: Align(
                  child: Text('Password'), 
                  alignment: Alignment.centerLeft)
                  ),
             
              TextFormField(
                decoration: 
                   const InputDecoration(hintText: "Enter your password"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/second');
                },
                child: Text('LOGIN'),
               )
              ],          
             ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blue[300],
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}