class Toto {
  final String lastName;
  final String firstName;
  final int age;
  final String address;
  final Toto? friend;

  const Toto(
    this.lastName, {
    this.firstName = '',
    this.age = 50,
    required this.address,
    this.friend,
  });
}

void main() {
  const toto1 = Toto(
    'Ecalle',
    age: 20,
    firstName: 'Thomas',
    address: 'Address 1',
  );
  const toto2 = Toto('Salut', address: 'Address 2');
  const toto3 = Toto('Salut', address: 'Address 2');

  print(toto3.friend?.firstName ?? 'Cas par défaut');

  // print(toto1.age);
  // print(toto2.age);
  print(toto2 == toto3);
}
