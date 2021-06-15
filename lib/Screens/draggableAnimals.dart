import 'package:draggabble_items_project/Screens/dragableBasicPage.dart';
import 'package:draggabble_items_project/data/data.dart';
import 'package:flutter/material.dart';

class DraggableAnimals extends StatefulWidget {
  const DraggableAnimals({ Key? key }) : super(key: key);

  @override
  _DraggableAnimalsState createState() => _DraggableAnimalsState();
}

class _DraggableAnimalsState extends State<DraggableAnimals> {

  //  final List<Animal> all = allAnimals;
  //  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Find The Right One'),),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           
           buildTargetsWaterAnimal(context),

           Center(child: animalWidget()),

           buildTargets(context),
           
           ]),
    );

    

  }

  //Water Animals
  Widget buildTargetsWaterAnimal(BuildContext context)=>Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildTarget(
          context,
          text:'Water Animals',
          acceptType:AnimalType.water,
        ),
        
      ],
  );


  //Animals And Birds
  Widget buildTargets(BuildContext context)=>Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildTarget(
          context,
          text:'Animals',
          acceptType:AnimalType.land,
        ),
        buildTarget(
          context,
          text:'Bird',
          acceptType:AnimalType.air,
        ),
      ],
  );

  Widget buildTarget(

    BuildContext context, {
      required String text,
      required AnimalType acceptType,
    })=>

        CircleAvatar(
          radius: 75,
          backgroundColor:Colors.blue[700] ,
          child: DragTarget<Animal>(
            builder: (context, candidateData,rejectedData)=>Center(
              child:Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: 20),
              ) ,
              ),

              onWillAccept:(data)=>true ,
              onAccept: (data){
                if(data.type==acceptType){
                  print('You Are right');
                  setState(() {
                    all.removeWhere((animal) => animal.imageUrl ==data.imageUrl);
                  });
                }else{
                  print('You are wrong');
                }
              },
            ),
        );

  
}