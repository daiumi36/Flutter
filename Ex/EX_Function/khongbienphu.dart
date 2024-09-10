void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  phones[1] = phones[1] + phones[2];
  phones[2] = phones[1].substring(0, phones[1].length - phones[2].length);
  phones[1] = phones[1].substring(phones[2].length);

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
