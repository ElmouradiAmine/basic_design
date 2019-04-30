import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beautiful Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logo(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Quick Bee',
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Row(
              children: <Widget>[
                button('Sign in With Email', 0xFF18D191),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Container(
                      height: 60.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF4364A1)),
                      child: Center(
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20.0),
                    child: Container(
                      height: 60.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFFDF5138)),
                      child: Center(
                        child: Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String title, int color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 10),
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Color(color)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF18D191)),
          child: Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 50.0, top: 60.0),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F)),
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0, top: 60.0),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFFC256)),
          child: Icon(
            Icons.local_car_wash,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 100.0, top: 10.0),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF45E0EC)),
          child: Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
