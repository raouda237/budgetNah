
// Interface pour le calcul de note

abstract class Gradable {
  String calculateGrade();
}

// Classe abstraite Person

abstract class Person {
  String name;

  Person(this.name);

  String describe();
}

// Data class Subject

class Subject {
  final String name;
  final double? score;

  Subject(this.name, this.score);
}

// Classe Semester

class Semester {
  final String title;
  final List<Subject> subjects;

  Semester(this.title, this.subjects);

  double calculateGPA() {
    // récupérer les scores non nuls
    var validScores =
        subjects.where((s) => s.score != null).map((s) => s.score!).toList();

    if (validScores.isEmpty) return 0.0;

    var grades = validScores.map((score) {
      if (score >= 90) return 4.0;
      if (score >= 80) return 3.0;
      if (score >= 70) return 2.0;
      if (score >= 60) return 1.0;
      return 0.0;
    }).toList();

    var sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

// Data class Student

class Student extends Person implements Gradable {
  final double? score;
  final Semester? semester;

  Student(String name, this.score, [this.semester]) : super(name);

  @override
  String calculateGrade() {
    var s = score;
    if (s == null) return "No Score";

    if (s >= 90) return "A";
    if (s >= 80) return "B";
    if (s >= 70) return "C";
    if (s >= 60) return "D";
    return "F";
  }

  @override
  String describe() {
    String baseInfo;

    if (score == null) {
      baseInfo = "No score for $name";
    } else {
      baseInfo = "$name scored $score : Grade ${calculateGrade()}";
    }

    if (semester != null) {
      var gpa = semester!.calculateGPA().toStringAsFixed(2);
      return "$baseInfo | Semester: ${semester!.title} | GPA: $gpa";
    }

    return baseInfo;
  }
}

// Classe Teacher

class Teacher extends Person {
  final String subject;

  Teacher(String name, this.subject) : super(name);

  @override
  String describe() {
    return "Teacher $name teaches $subject";
  }

  @override
  String toString() {
    return "Teacher(name=$name, subject=$subject)";
  }
}

// Programme principal

void main() {
  var semester1 = Semester(
    "Semester 1",
    [
      Subject("Math", 92.0),
      Subject("Physics", 85.0),
      Subject("Programming", 88.0),
    ],
  );

  var semester2 = Semester(
    "Semester 2",
    [
      Subject("Math", 74.0),
      Subject("Physics", 69.0),
      Subject("Programming", 80.0),
    ],
  );

  // Polymorphisme
  List<Person> people = [
    Student("Amira", 92.0, semester1),
    Student("Bovan", 74.0, semester2),
    Student("Clavia", null, null),
    Teacher("Mr.Mbarga", "Mathematics")
  ];

  print("School Members ");

  for (var person in people) {
    print(person.describe());
  }
}