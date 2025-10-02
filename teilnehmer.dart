// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'dart:developer' show log;

//Erstellt eine Participant Klasse mit diversen Attributen.
class Participant {
  Participant({
    required this.name,
    required this.firstName,
    required this.age,
    this.mobileNumber,
    this.telephoneNumber,
  });

  void dosmth() {
    log("hallo");
  }

  final String name;
  final String firstName;
  final int age;
  final int? mobileNumber;
  final int? telephoneNumber;

  ///asd
  @override
  // der [==] soll Objekte miteinander vergleichen können
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Participant &&
        other.name == name &&
        other.firstName == firstName &&
        other.age == age &&
        other.mobileNumber == mobileNumber &&
        other.telephoneNumber == telephoneNumber;
  }

  @override
  int get hashCode => Object.hash(mobileNumber, telephoneNumber);

  Participant copyWith({
    String Function()? name,
    String Function()? firstName,
    int Function()? age,
    int? Function()? mobileNumber,
    int? Function()? telephoneNumber,
  }) {
    return Participant(
      name: name != null ? name() : this.name,
      firstName: firstName != null ? firstName() : this.firstName,
      age: age != null ? age() : this.age,
      mobileNumber: mobileNumber != null ? mobileNumber() : this.mobileNumber,
      telephoneNumber:
          telephoneNumber != null ? telephoneNumber() : this.telephoneNumber,
    );
  }
}
