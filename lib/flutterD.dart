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
enum answers{YES,NO,MAYBE}

class _State extends State<myApp>{
  String _value='';
  void _setValue(String value){
    setState(() {
      _value=value;
    });
  }
 Future _askUser()async{
    switch(
      await showDialog(context: context,
          builder: (BuildContext context){
        return SimpleDialog(
          title: Text('Do you like Flutter?'),
          children: [
            SimpleDialogOption(child: Text('Yes'),onPressed: (){Navigator.pop(context,answers.YES);},),
            SimpleDialogOption(child: Text('No'),onPressed: (){Navigator.pop(context,answers.NO);},),
            SimpleDialogOption(child: Text('Maybe'),onPressed: (){Navigator.pop(context,answers.MAYBE);},),
          ],
        );
          })
    ){
      case answers.YES:
        _setValue('YES');
        break;
      case answers.NO:
        _setValue('NO');
        break;
      case answers.MAYBE:
        _setValue('MAYBE');
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
