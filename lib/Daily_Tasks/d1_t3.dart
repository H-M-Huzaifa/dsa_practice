//Find the largest number in a given list of integers.
void main(){

  List myList=[1,2,3,4,5,6,7,8,9,10];

  var maxVal=myList[0];

  for(int i=0; i<=myList.length-1; i++){
    if(myList[i]>maxVal){
      maxVal=myList[i];
    }
  }
  print(maxVal);

}