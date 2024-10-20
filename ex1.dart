enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final String zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  final String name;
  final List<Skill> skills;
  final Address address;
  final int yearsOfExperience;


  Employee(this.name, this.skills, this.address, this.yearsOfExperience);


  Employee.mobileDeveloper(String name, Address address)
      : this(name, [Skill.FLUTTER, Skill.DART], address, 0);

  double computeSalary() {
    double baseSalary = 40000.0;
    double experienceBonus = yearsOfExperience * 2000.0;
    double skillBonus = skills.fold(0.0, (sum, skill) {
      switch (skill) {
        case Skill.FLUTTER: return sum + 5000;
        case Skill.DART: return sum + 3000;
        case Skill.OTHER: return sum + 1000;
      }
    });
    return baseSalary + experienceBonus + skillBonus;
  }
}