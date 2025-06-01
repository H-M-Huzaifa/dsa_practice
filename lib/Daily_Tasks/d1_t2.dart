//Create a growable list and:
// o Add 5 elements of any type.
// o Remove the 2nd and 4th elements.
// o Insert a new item at the start of the list.
// o Print the final list and its length.

void main(){


  List myList=[2,4,6,8,10];
  print("before altering:$myList");
  myList.removeAt(1);
  myList.removeAt(3);
  print("after altering:$myList");

}