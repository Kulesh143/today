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
  int value1=0;
  int value2=0;
  void setvalue1(int value){
    setState(() {
      value1=value;
    });
  }
  void setvalue2(int value){
    setState(() {
      value2=value;
    });
  }
  Widget makeRadio(){
    List<Widget> lists=new List<Widget>();
    for(int i=0;i<3;i++){
      lists.add(Radio(value: i, groupValue: value1, onChanged: setvalue1));
    }
    Column column=new Column(children: lists,);
    return column;
  }
  Widget makeRadioListTile(){
    List<Widget>lists=new List<Widget>();
    for(int i=0;i<3;i++){
      lists.add(RadioListTile(value: i, groupValue: value2, onChanged: setvalue2,title: Text('item:${i}'),controlAffinity: ListTileControlAffinity.trailing,subtitle: Text('sub'),activeColor: Colors.green,));
    }
    Column column=new Column(children: lists,);
    return column;
  }
  bool valueOne=false;
  bool valueTwo=false;
  void setValueOne(bool value){
    setState(() {
      valueOne=value;
    });
  }
  void setValueTwo(bool value){
    setState(() {
      valueTwo=value;
    });
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
            new Text("My App"),
            makeRadio(),
            makeRadioListTile(),
            Checkbox(value: valueOne, onChanged: setValueOne),
            CheckboxListTile(value: valueTwo, onChanged: setValueTwo,activeColor: Colors.red,controlAffinity: ListTileControlAffinity.leading,subtitle: Text('Sub'),title: Text('Hello'),secondary: Icon(Icons.archive),),

          ],
        ),
      ),
    );
  }
}
