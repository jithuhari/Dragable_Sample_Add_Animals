import 'package:draggabble_items_project/Widgets/draggableWidget.dart';
import 'package:flutter/material.dart';
import 'package:draggabble_items_project/data/data.dart';


final List<Animal> all = allAnimals;
   int score = 0;

Widget animalWidget()=> Stack(
  alignment: Alignment.center,
  children: all.map((animal) => DraggableWidget(animal:animal,) ).toList(),
  
);