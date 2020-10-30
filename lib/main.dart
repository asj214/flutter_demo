import 'package:flutter/material.dart';
import 'nav/left_drawer.dart';
import 'splash_screen.dart';
import 'main/main_swiper.dart';
import 'main/main_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => MyHomePage(),
        //'/Profile': (BuildContext context) => ProfileView()
      }
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
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      drawer: LeftDrawer(),
      appBar: AppBar(
        title: Text('Flutter Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainSwiper(),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 5.0, bottom: 10.0),
                  child: Text('Best Cards',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                )
              )
            ),
            MainCard()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => {},
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Second',
          )
        ]
      )
    );

  }

}
