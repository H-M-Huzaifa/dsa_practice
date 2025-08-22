//Count names starting with "A".

void main(){

  List<String> myStrings=['Adam and Eve',"Elie and Renee","Ali and Usman"];
  print(myStrings.where((name)=> name.startsWith('A')).length);

}



