//Filter even numbers from a list.

void main(){
  
  List<int> myList=[0,1,2,3,4,5,6,7,8,9,10];
  print(myList.where((n)=> n%2==0).toString());
  
}