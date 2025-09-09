//2. Use a list of names to create a map with each name as key and its length as value

void main() {
  List names = ['ali', 'hamid', 'qasim', 'shahid'];
  Map myMap = {};

  for (int i = 0; i <= names.length - 1; i++) {
    myMap.putIfAbsent(names[i], () => names[i].toString().length);
  }
  print(myMap);
}


//another way to interate directly over the names
// void main() {
//   List<String> names = ['ali', 'hamid', 'qasim', 'shahid'];
//   Map<String, int> myMap = {};
//
//   for (String name in names) { // Iterate directly over the names
//     myMap.putIfAbsent(name, () => name.length);
//   }
//   print(myMap);
// }



//Direct Assignment (Simpler since keys are unique and map is empty): Since you are starting with an empty map and the names in your list are the keys you're adding for the first time, you don't strictly need putIfAbsent. Direct assignment is simpler:
// void main() {
//   List<String> names = ['ali', 'hamid', 'qasim', 'shahid'];
//   Map<String, int> myMap = {};
//
//   for (String name in names) {
//     myMap[name] = name.length; // Direct assignment
//   }
//   print(myMap);
// }



//Map Comprehension (Most Concise for this Specific Task): For this particular task of transforming a list into a map, a map comprehension is the most concise and often preferred way in modern Dart:
// void main() {
//   List<String> names = ['ali', 'hamid', 'qasim', 'shahid'];

//   Map<String, int> myMap = {
//   for (var name in names) name: name.length
//   }; // Map comprehension

//   print(myMap);
// }