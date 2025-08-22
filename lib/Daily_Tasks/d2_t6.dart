//Write a frequency counter for a list of words using a Map.


void main(){
  List myWords=["Bye","Hello","Hi","Representative","Bye","Hello",];
  Map<String,int> myMap={};

  for(String word in myWords){
    if(myMap.containsKey(word)){
      myMap[word]=myMap[word]!+1;
    }
    else{
      myMap[word]=1;

    }
  }
  print(myMap);

}