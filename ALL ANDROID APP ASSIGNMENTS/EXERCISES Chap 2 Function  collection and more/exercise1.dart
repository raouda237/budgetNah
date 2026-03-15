//EXERCISE 1: Build your own higher-order function

// Fonction qui traite une liste avec une fonction predicate
List<int> processList(List<int> numbers, bool Function(int) predicate) {
  List<int> result = [];

  for (int n in numbers) {
    if (predicate(n)) {
      result.add(n);
    }
  }

  return result;
}

// Fonction principale
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  print("Liste originale: $numbers");

  // Lambda pour garder les nombres pairs
  List<int> evenNumbers = processList(numbers, (n) => n % 2 == 0);

  print("Nombres pairs: $evenNumbers");

  // Lambda pour garder les nombres > 4
  List<int> greaterThanFour =
      processList(numbers, (n) => n > 4);

  print("Nombres > 4: $greaterThanFour");
}