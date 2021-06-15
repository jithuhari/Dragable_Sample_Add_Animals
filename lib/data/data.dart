enum AnimalType { land, air }

class Animal {
  final String imageUrl;
  final AnimalType type;

  Animal({
    required this.imageUrl,
    required this.type,
  });
}

final allAnimals = [

  Animal(
    imageUrl: 'Assets/images/animals/Tiger.png', 
    type: AnimalType.land
    ),

  Animal(
    imageUrl: 'Assets/images/animals/KingFisher.png', 
    type: AnimalType.air
    )  

];