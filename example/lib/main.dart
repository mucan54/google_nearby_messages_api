import 'package:flutter/material.dart';
import 'package:google_nearby_messages_api/google_nearby_messages_api.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _lastMessageFound;
  String _lastMessageLost;
  String _currentText = "";

  @override
  void initState() {
    super.initState();
    GoogleNearbyMessagesApi.setApiKey("AIzaSyABuFjy0a3FcsXVT6fDrABIM2rXTSxA65U");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Container(
          color: Colors.white70,
          child: new Column(children: [
            new FlatButton(onPressed: () {
              GoogleNearbyMessagesApi.subscribe(onFound: (msg) {
                setState(() {_lastMessageFound = msg;});
              }, onLost: (msg) {
                setState(() {_lastMessageLost = msg;});
              });
            }, child: new Text("Subscribe to Nearby")),
            new Text("Last message found: $_lastMessageFound"),
            new Text("Last message lost: $_lastMessageLost"),
            new FlatButton(
                onPressed: GoogleNearbyMessagesApi.unsubscribe,
                child: new Text("Unsubscribe from Nearby")
            ),
            new TextField(onChanged: (str) {
              _currentText = str;
            }),
            new FlatButton(onPressed: () {
              GoogleNearbyMessagesApi.publish(_currentText);
            }, child: new Text("Publish to Nearby")),
            new FlatButton(onPressed: () {
              GoogleNearbyMessagesApi.unpublish();
            }, child: new Text("Unpublish from Nearby")),
          ]),
        ),
      ),
    );
  }
}