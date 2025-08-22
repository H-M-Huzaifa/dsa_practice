//all operations on sets are performed.
void main(){

  Set mySet={1,2,3};
  Set mySet2={2,4,5,6};

  print(mySet);
  mySet.add(2);
  print(mySet);

  Set set3=mySet.union(mySet2);
  print(set3);
  Set set4=mySet.intersection(mySet2);
  print(set4);
  Set set5=mySet.difference(mySet2);
  print(set5);


}