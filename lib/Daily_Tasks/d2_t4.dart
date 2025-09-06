//Palindrome checker using list reversal.

void main(){
  String word="";
  List myList=word.split("");
  List reversedList = myList.reversed.toList();
  String reversedword=reversedList.join("");

  if(word==reversedword){
    print("The word is a palindrome");
  }
  else{
    print("The word is not a palindrome");

  }
}


//aother way to do it without built-in functions
// void main(){
//   String word ="madam";
//   int start=0;
//   int end= word.length-1;
//   bool isPalindrome=true;
//
//   while(start<end){
//     if(word[start]!=word[end]){
//       isPalindrome=false;
//     }
//     start++;
//     end--;
//
//     if(isPalindrome){
//       print("The word ${word} is a Palindrome");
//     }
//   }
//
// }/