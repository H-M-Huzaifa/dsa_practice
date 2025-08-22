//Manually reverse a list

void main() {
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List reverseList = [];

  for(int i=myList.length-1; i>=0; i--){
    reverseList.add(myList[i]);
  }

  print(reverseList);

}



