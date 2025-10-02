///Erstellt eine Participant klasse mit diversen Attributen
class Participant {
  final String name;
  final String firstName;
  final int age;
  final int? mobileNumber;
  final int? telephoneNumber;

///Erstellt eine Participant klasse mit diversen Attributen
  Participant({
    required this.name,
    required this.firstName,
    required this.age,
    this.mobileNumber,
    this.telephoneNumber,
  });

  ///
  @override
  /// der [==] soll Objekte miteinander vergleichen können
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Participant &&
        other.mobileNumber == mobileNumber &&
        other.telephoneNumber == telephoneNumber;
  }

  @override
  int get hashCode => Object.hash(mobileNumber, telephoneNumber);

  Participant copyWith({
    Function()? mobileNumber,
    Function()? telephoneNumber,
  }) {
    return Participant(
      name: name,
      firstName: firstName,
      age: age,
      mobileNumber: mobileNumber != null ? mobileNumber() : this.mobileNumber,
      telephoneNumber:
          telephoneNumber != null ? telephoneNumber() : this.telephoneNumber,
    );
  }
}

void main() {
  final p1 = Participant(name: 'Kai', firstName: 'Aik', age: 21);

  final p2 = p1.copyWith(mobileNumber: () => 100);
  final p3 = p2.copyWith(mobileNumber: () => null);
  print(p1 == p2);
  print(p2 == p3);
  print(p1 == p3);
}
