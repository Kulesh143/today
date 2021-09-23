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
enum answers{YES,No,MAYBE}
class _State extends State<myApp>{
String _value='';
void _setvalue(String value){
  setState(() {
    _value=value;
  });
}
Future _askUser()async{
  switch(
  await showDialog(context: context, builder: (BuildContext context){
    return SimpleDialog(
      title: Text('Do you like Flutter?'),
      children: [
        SimpleDialogOption(child: Text('Yes'),onPressed: (){Navigator.pop(context,answers.YES);},),
        SimpleDialogOption(child: Text('No'),onPressed: (){Navigator.pop(context,answers.No);},),
        SimpleDialogOption(child: Text('Maybe'),onPressed: (){Navigator.pop(context,answers.MAYBE);},),
      ],
    );
  })
  ){
    case answers.YES:
      _setvalue('Yes');
      break;
    case answers.No:
      _setvalue('No');
      break;
    case answers.MAYBE:
      _setvalue('Maybe');
      break;
  }
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_value),
            RaisedButton(onPressed: _askUser,child: Text('Click Me'),),
          ],
        ),
      ),
    );
  }
}
