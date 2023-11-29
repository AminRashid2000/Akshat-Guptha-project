class Person {
  final String name;
  final String level;

  Person({
    required this.name,
    required this.level,
  });

  static List<Person> jsonData() {
    return [
      Person(name: "Abhishek", level: "Basic"),
      Person(name: "Tarun", level: "Intermediate"),
      Person(name: "Mohan", level: "Advanced"),
      Person(name: "Mohan", level: "Intermediate"),
      Person(name: "Raja", level: "Basic"),
    ];
  }
}
