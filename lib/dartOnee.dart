import 'package:flutter/cupertino.dart';
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
           FlatButton(onPressed: (){}, child: Text("Click Me"),textColor: Colors.blue,color: Colors.greenAccent,padding: EdgeInsets.all(12.0),),
            RaisedButton(onPressed: (){}, child: Text("Click My Button"),textColor: Colors.green,color: Colors.yellowAccent,padding: EdgeInsets.all(12.0),),
            IconButton(icon: Icon(Icons.volume_up), onPressed:(){},iconSize: 100,tooltip: 'Raise the volume to 50',padding: EdgeInsets.all(12.0),color: Colors.brown,),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.navigation),backgroundColor: Colors.yellowAccent,foregroundColor: Colors.pink,),
            SizedBox(height: 20,),
            InkWell(splashColor: Colors.yellowAccent,child: Icon(Icons.ring_volume,size: 100,),highlightColor: Colors.redAccent,onTap: (){},),
         OutlinedButton(onPressed: (){}, child: Text("click me now"),),
            OutlineButton(onPressed: (){},highlightColor: Colors.greenAccent,child: Text("Click me right now"),),
          TextButton(onPressed: (){}, child: Text("Submit"),),
            ElevatedButton(onPressed: (){}, child: Text("Login"),),
          ],
        ),
      ),
    );
  }
}
