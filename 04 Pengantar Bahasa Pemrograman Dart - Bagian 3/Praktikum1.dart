// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// Langkah 3 
// void main() {
   // final list = List.filled(5, null);
   // assert(list.length == 3);
   // assert(list[1] == 2);
   // print(list.length);
   // print(list[1]);

   // list[1] = 'Yanuar Alda Baran';
   // list[2] = '244107060016';
   // assert(list[1] == 1);
   // print(list[1]);
   // print(list[2]);
 // }

 void main() {
  final List<String?> list = List.filled(5, null);
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);

  list[1] = 'Yanuar Alda Baran';
  list[2] = '244107060016';
  assert(list[1] == 'Yanuar Alda Baran');
  assert(list[2] == '244107060016');
  print(list[1]);
  print(list[2]);
}