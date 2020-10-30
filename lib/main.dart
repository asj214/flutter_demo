import 'package:flutter/material.dart';
import 'nav/left_drawer.dart';
import 'splash_screen.dart';
import 'main/main_swiper.dart';

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
          '/HomeScreen': (BuildContext context) => MyHomePage()
        });
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
        drawer: LeftDrawer(),
        appBar: AppBar(
          title: Text('Flutter Example'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MainSwiper(),
              Text('Body', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) => {},
            currentIndex: 0,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: 'First',
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Second',
              )
            ]));
  }
}
