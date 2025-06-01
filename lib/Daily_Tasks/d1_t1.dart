void main(){

  List mylist=[1,2,3,4,5,6,7,8,9,10,11,12,13,14];
  sumOfEvens(mylist);


}


void sumOfEvens(List list) {
      List evenNums=[];
  for (int i = 0; i < list.length; i++) {
    if (list[i] %2 == 0){
      evenNums.add(list[i]);
    }
  }
    print(evenNums);


  //for addition
      var result=evenNums[0];
  for(int j=0; j<evenNums.length-1; j++){
    result=result+evenNums[j+1];
  }
    print(result);
}

//Efficient way
// void main() {
//   List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
//   int result = sumOfEvens(myList);
//   print("Sum of even numbers: $result");
// }
//
// int sumOfEvens(List<int> list) {
//   int sum = 0;
//
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] % 2 == 0) {
//       sum += list[i]; // directly add to sum
//     }
//   }
//
//   return sum;
// }