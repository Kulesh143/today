import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new myApp(),
  ));
}
class myApp extends StatefulWidget{
  @override
  _State createState()=>new _State();
}
class _State extends State<myApp>{
Future _showAlert(BuildContext context,String message)async {
  return showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text(message),
    actions: [
      FlatButton(onPressed: ()=>Navigator.pop(context), child: Text("OK"))
    ],
  ));}
final GlobalKey<ScaffoldState>_scaff=new GlobalKey<ScaffoldState>();
void showBar(){
  _scaff.currentState.showSnackBar(SnackBar(content: Text("Hello Everyone")));
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaff
      ,
      appBar: new AppBar(

        title: new Text("Hello"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text("My App"),
            RaisedButton(onPressed:()=>_showAlert(context, "Do you like Flutter?"),child: Text('Click Me'),),
          RaisedButton(onPressed: showBar,child: Text('Click the snackbar'),),
          ],
        ),
      ),
    );
  }
}
