import 'dart:developer' show log;

import 'teilnehmer.dart';

void main() {
  final p1 = Participant(name: 'Kai', firstName: 'Aik', age: 21);

  final p2 = p1.copyWith(name: () => 'Peter');
  final p3 = p2.copyWith(mobileNumber: () => null);
  log('${p1 == p2}');
  log('${p2 == p3}');
  log((p1 == p3).toString());
}
