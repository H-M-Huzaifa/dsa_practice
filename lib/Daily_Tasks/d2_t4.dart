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