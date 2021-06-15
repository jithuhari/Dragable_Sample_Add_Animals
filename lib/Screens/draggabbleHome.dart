import 'package:draggabble_items_project/Widgets/draggabeContainer.dart';
import 'package:flutter/material.dart';

class DraggableHome extends StatefulWidget {
  const DraggableHome({ Key? key }) : super(key: key);

  @override
  _DraggableHomeState createState() => _DraggableHomeState();
}

class _DraggableHomeState extends State<DraggableHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        Center(
          child: Draggable(
            childWhenDragging: buildText('Behind', Colors.yellow),
            feedback:Material(child: buildText('Dragged', Colors.pink)) ,
            child: buildText('Drag Me', Colors.purple)),
        )
      ],),
      
    );
  }
}