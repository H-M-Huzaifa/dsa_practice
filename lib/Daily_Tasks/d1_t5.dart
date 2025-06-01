//Create a function that removes duplicate values from a list of integers

void main(){

  List myList=[6,2,8,4,6,2,7,2,8,10,55,55,55,55,98,98,98,98,1,2];
  List uniqueList=[];
  print("previous list:$myList");

  for(int i=0; i<=myList.length-1; i++){
    bool isDuplicate =false;
    for(int j=1; j<=uniqueList.length-1; j++){
     if(myList[i]==uniqueList[j]){
       isDuplicate=true;
       break;
     }
    }

     if(!isDuplicate){
       uniqueList.add(myList[i]);
     }
  }
  print("The unique list is:$uniqueList");
}