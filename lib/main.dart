import 'package:flutter/material.dart';
//import 'home.dart';
import 'web_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => WebViewContainer('https://senac-cf-gef.us-south.cf.appdomain.cloud/')));
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=ext');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFF3ECCA6),
                //  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Extenção'),

            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=jov');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFF3ACCE1),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Jovem Aprendiz'),
            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=gra');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFF4A97E6),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Graduação'),
            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=pos');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFF665EFF),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Pós Graduação'),
            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=mtec');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFFC761CB),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Médio Técnico'),
            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=liv');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFFFF9057),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text('Livres'),
            ),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                _handleURLButtonPress(context,'https://senac-cf-nodejs-003.us-south.cf.appdomain.cloud/mobile?theme=tec');
              },
              style: ElevatedButton.styleFrom(

                  primary: Color(0xFFF7BD23),
                  fixedSize: const Size(280, 80),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              child: Text("Técnicos"),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
