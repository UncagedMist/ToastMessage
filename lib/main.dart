import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
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
  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Long Toast",
      toastLength: Toast.LENGTH_LONG,
    );
  }

  void showColoredToast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void showShortToast() {
    Fluttertoast.showToast(
        msg: "This is Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIos: 1);
  }

  void showTopShortToast() {
    Fluttertoast.showToast(
        msg: "This is Top Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIos: 1);
  }

  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Toast Message'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                  child: new Text('Show Long Toast'),
                  onPressed: showLongToast),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                  child: new Text('Show Short Toast'),
                  onPressed: showShortToast),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                  child: new Text('Show Center Short Toast'),
                  onPressed: showCenterShortToast),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                  child: new Text('Show Top Short Toast'),
                  onPressed: showTopShortToast),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                  child: new Text('Show Colored Toast'),
                  onPressed: showColoredToast),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                child: new Text('Cancel Toasts'),
                onPressed: cancelToast,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
