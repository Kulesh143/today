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
  List<BottomNavigationBarItem>list;
  String _value='';
  int _index=0;
  @override
  void initState(){
    list=new List();
    list.add(new BottomNavigationBarItem(icon:Icon(Icons.people),title: Text('People')));
    list.add(new BottomNavigationBarItem(icon:Icon(Icons.weekend),title: Text('Weekend')));
    list.add(new BottomNavigationBarItem(icon:Icon(Icons.message),title: Text('Message')));
    super.initState();

  }
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello World"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: _add),
          IconButton(icon: Icon(Icons.remove), onPressed: _remove)
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new
            Text(value.toString(),style: new TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold),)
       ,Text(_value),
          ],
        ),

      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blueAccent,
        currentIndex: _index,
      items: list,
      onTap: (int list){
          setState(() {
          _index=list;
          _value="Current value is ${_index.toString()}";
          });
      },
      ),
    );
  }
}
