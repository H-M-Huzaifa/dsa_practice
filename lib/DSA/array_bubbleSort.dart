void main(){
  List myArray =[9,8,19,5,3,2,7];
  print("before sorting:$myArray");
  int length=myArray.length;

  for(int i=0; i<length-1; i++) {
    for (int j = 0; j < length - 1; j++) {
      if(myArray[j]>myArray[j+1]){
        //swap
        int temp=myArray[j];
        myArray[j]=myArray[j+1];
        myArray[j+1]=temp;
      }
    }
  }
  print("after sorting:$myArray");
}