//Use a stack to reverse a string

void main(){
  String greeting='Hello';

List stack=greeting.split('');
print(stack);
 var reversedList=stack.reversed;

 var reversedString=reversedList.join();
 print(reversedString);


}


//other way to do it
// void main(){
//   String greeting='Hello';
//
//   List charList=greeting.split('');
//
//   List stack=[];
//   for(var i=charList.length-1; i>=0; i--){
//     stack.add(charList[i]);       //push
//
//   }
//   print(stack);
//   print(stack.join());
// }


//3rd way
// import 'dart:collection'; // For a more formal Stack, though List works well here
//
// void main() {
//   String greeting = 'Hello';
//   List<String> charList = greeting.split('');
//
//   // Using List as a stack (Dart lists have efficient add/removeLast)
//   List<String> stack = [];
//   for (String char in charList) {
//     stack.add(char); // Push onto stack
//   }
//
//   String reversedString = '';
//   while (stack.isNotEmpty) {
//     reversedString += stack.removeLast(); // Pop from stack and append
//   }
//
//   print(reversedString); // Output: olleH
// }