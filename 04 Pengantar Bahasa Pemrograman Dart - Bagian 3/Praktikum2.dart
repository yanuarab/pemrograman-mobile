// void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);
//}

void main() {
  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add('Yanuar Alda Baran');
  names1.add('244107060016');

  names2.addAll(['Yanuar Alda Baran', '244107060016']);

  print("ini names1");
  print(names1);
  print("ini names2");
  print(names2);
}