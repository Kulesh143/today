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
  List<ListItem>_dropdownItem=[
    ListItem(1, "Kulesh"),
    ListItem(2, "Madurinda"),
    ListItem(3, "Alex"),
  ];
List<DropdownMenuItem<ListItem>>_dropdownMenuItem;
ListItem _itemsSelected;
void initState(){
  super.initState();
  _dropdownMenuItem=buildListDropDownItems(_dropdownItem);
  _itemsSelected=_dropdownMenuItem[1].value;
}
  List<DropdownMenuItem<ListItem>>buildListDropDownItems(List listItems){
    List<DropdownMenuItem<ListItem>>items=List();
    for(ListItem listItem in listItems){
  items.add(
      DropdownMenuItem(
        child:Text(listItem.name),
        value:listItem,
      )
  );
    }return items;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                value: _itemsSelected,
                  items: _dropdownMenuItem,
                  onChanged: (value){
                  setState(() {
                    _itemsSelected=value;
                  });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ListItem{
  int value;
  String name;
  ListItem(this.value,this.name);
}
