import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: goodDay(),
  ));
}
class goodDay extends StatefulWidget {
  @override
  _goodDayState createState() => _goodDayState();
}

class _goodDayState extends State<goodDay> {
  int value=0;
void _add(){
  setState(() {
 value++;
  });
}
void _remove(){
  setState(() {
value--;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Hello World"),
      backgroundColor: Colors.redAccent,
      actions: [
        IconButton(icon:Icon(Icons.add) , onPressed: _add),
        IconButton(icon:Icon(Icons.remove) , onPressed: _remove),
      ],
    ),body: new Container(
      padding: EdgeInsets.all(32.0),
   child: new Center(
     child: new Column(
       children: [
         Text(value.toString(),style: new TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 32.0,
         ),),
       ],
     ),
   ),
    ),
    );
  }
}
