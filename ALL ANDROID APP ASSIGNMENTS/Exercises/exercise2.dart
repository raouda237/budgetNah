void main() {
  List<String> words = ["Apple", "Cat", "Banana", "Dog", "Elephant", "Car"];

  // Créer une map : mot -> longueur
  Map<String, int> wordLengths = {
    for (var word in words) word: word.length,
  };

  print("Map complète:");
  print(wordLengths);

  print("\nMots avec longueur > 4:");

  // Filtrer les entrées avec longueur > 4
  wordLengths.entries
      .where((entry) => entry.value > 4)
      .forEach((entry) {
    print("${entry.key} -> ${entry.value}");
  });
}