import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[Icon(Icons.shopping_basket, color: Colors.black)],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here',
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                        suffixIcon: Icon(Icons.search))),
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xfffdcb9e),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20))),
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://pngriver.com/wp-content/uploads/2018/04/Download-Kiwi-PNG-Clipart.png',
                          height: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Kiwi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                            SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
