// Exercise 3 : Drawable Shapes with interfaces

// Interface Drawable
abstract class Drawable {
  void draw();
}

// Classe Circle qui implémente Drawable
class Circle implements Drawable {
  final int radius;

  Circle(this.radius);

  @override
  void draw() {
    print("Circle with radius $radius");

    print("  ***  ");
    print(" *   * ");
    print("  ***  ");
  }
}

// Classe Square qui implémente Drawable
class Square implements Drawable {
  final int side;

  Square(this.side);

  @override
  void draw() {
    print("Square with side length $side");

    print("*********");
    print("*       *");
    print("*       *");
    print("*********");
  }
}

// Fonction principale
void main() {

  List<Drawable> shapes = [
    Circle(3),
    Square(4)
  ];

  for (var shape in shapes) {
    shape.draw();
    print("");
  }
}