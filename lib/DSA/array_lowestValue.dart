void main(){
  List myArray =[9,8,1,5,3];
  int minVal=myArray[0];

  for(int i in myArray){
    if(i<minVal){
      minVal=i;
    }
  }
  print(minVal);
}