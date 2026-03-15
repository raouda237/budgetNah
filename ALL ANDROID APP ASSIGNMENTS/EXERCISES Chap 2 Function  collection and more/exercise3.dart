//EXERCISE 3 : Complex data processing


class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  List<Person> people = [
    Person("Amira", 22),
    Person("Bovan", 30),
    Person("Agbor", 25),
    Person("Daoud", 40),
    Person("Brinda", 28),
    Person("Carlos", 35),
  ];

  // Filtrer les noms qui commencent par A ou B
  var filteredPeople = people.where((person) =>
      person.name.startsWith("A") || person.name.startsWith("B"));

  // Extraire les âges
  var ages = filteredPeople.map((person) => person.age).toList();

  // Calculer la moyenne d'âge
  double averageAge = 0;

  if (ages.isNotEmpty) {
    int sum = ages.reduce((a, b) => a + b);
    averageAge = sum / ages.length;
  }

  // Afficher avec 1 décimale
  print("Average age: ${averageAge.toStringAsFixed(1)}");
}