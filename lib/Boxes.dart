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
 int _value1=0;
 int _value2=0;
 void setValue1(int value){
   setState(() {
     _value1=value;
   });
 }
 void setValue2(int value){
   setState(() {
     _value2=value;
   });
 }
 bool value1=false;
 bool value2=false;
 void value1changed(bool value){
   setState(() {
     value1=value;
   });
 }
 void value2changed(bool value){
   setState(() {
     value2=value;
   });
 }
Widget makedradio() {
  List<Widget> list = new List<Widget>();
  for (int i = 0; i < 3; i++) {
    list.add(Radio(value: i, groupValue: _value1, onChanged: setValue1));
  }
  Column column = new Column(children:
  list,
  );
   return column;
}
Widget makeRadioListTile(){
   List<Widget>list=new List<Widget>();
   for(int i=0;i<3;i++){
     list.add(RadioListTile(value: i, groupValue: _value2, onChanged: setValue2,activeColor: Colors.green,controlAffinity: ListTileControlAffinity.trailing,title: Text('Item:${i}'),subtitle: Text('sub'),));
   }
   Column column=new Column(children: list,);
   return column;
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
            makedradio(),
            makeRadioListTile(),
            Checkbox(value: value1, onChanged: value1changed),
            CheckboxListTile(value: value2, onChanged: value2changed,activeColor: Colors.red,controlAffinity: ListTileControlAffinity.leading,title: Text('Hello!'),secondary: Icon(Icons.archive),),
          ],
        ),
      ),
    );
  }
}
