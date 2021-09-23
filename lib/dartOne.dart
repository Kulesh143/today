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
        RaisedButton(onPressed: (){},child: Text("Click My Button"),textColor: Colors.green,color: Colors.yellowAccent,padding: EdgeInsets.all(12.0),),
       IconButton(padding:EdgeInsets.all(12.0),icon:Icon(Icons.volume_up),iconSize: 100, onPressed: (){},tooltip: "Turn your Volume Up",color: Colors.brown,),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.navigation),backgroundColor: Colors.yellow,foregroundColor: Colors.red,)
        ,SizedBox(height: 20,),
            InkWell(onTap: (){},splashColor: Colors.yellowAccent,child: Icon(Icons.ring_volume),highlightColor: Colors.red,),
            OutlinedButton(onPressed: (){}, child:Text("Click this button"),),
            OutlineButton(onPressed: (){},child: Text("Login"),highlightColor: Colors.purple,),
        TextButton(onPressed: (){}, child: Text("Login"),),
            ElevatedButton(onPressed: (){}, child: Text("Sign In"),),

          ],
        ),
      ),
    );
  }
}
