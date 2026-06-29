void main() async {
  print('1');

  await Future.delayed(const Duration(seconds: 1));

  try {
    final myVariable = await toto();
  } catch (error) {
    print('Error: $error');
  }

  // toto().then((value) {
  //
  // }).catchError((error) {
  //
  // });

  print('2');

  print('3');
}

Future<String> toto() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Hello';
}
