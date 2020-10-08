
import 'package:flutter/material.dart';
import 'package:trade/screens/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('la Boxe'),
        actions: <Widget>[Icon(Icons.account_box)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,

                  )
                ), 
                child: Text('Simon me doit 10000', 
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.assignment_late, color: Colors.blue[100], size: 70,),
                    Icon(Icons.assignment_late, color: Colors.grey, size: 60,),
                    Icon(Icons.assignment_late, color: Colors.blue[100], size: 50,),
                    Icon(Icons.assignment_late, color: Colors.limeAccent, size: 40,),
                    Icon(Icons.assignment_late, color: Colors.lightGreen, size: 30,),
                    Icon(Icons.assignment_late, color: Colors.white, size: 20,),
                    Icon(Icons.assignment_late, color: Colors.grey, size: 10,),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Image.network('https://cdn.pixabay.com/photo/2018/01/01/01/57/woman-3053489__340.jpg'),
              SizedBox(height: 30),
              Image.asset('assets/cap.png'),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Select', style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                color: Colors.blue,
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
