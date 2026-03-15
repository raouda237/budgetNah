// Exercise 1: Model a Zoo

// Classe abstraite Animal
abstract class Animal {
  final String name;
  final int legs;

  Animal(this.name, this.legs);

  // Méthode abstraite
  String makeSound();
}

// Classe Dog qui hérite de Animal
class Dog extends Animal {
  Dog(String name) : super(name, 4);

  @override
  String makeSound() {
    return "Woof!";
  }
}

// Classe Cat qui hérite de Animal
class Cat extends Animal {
  Cat(String name) : super(name, 4);

  @override
  String makeSound() {
    return "Meow!";
  }
}

// Fonction principale
void main() {
  // Liste d'animaux
  List<Animal> animals = [
    Dog("Buddy"),
    Cat("Whiskers")
  ];

  // Parcourir la liste et afficher les sons
  for (var animal in animals) {
    print("${animal.name} says ${animal.makeSound()}");
  }
}