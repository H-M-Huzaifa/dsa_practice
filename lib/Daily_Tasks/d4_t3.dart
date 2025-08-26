//Write a function that takes a map and returns a list of students who scored above 80
//count how many are below 5


void main(){


  Map students={
    'Ali':5,
    'Hamid': 9,
    'Zara': 2,
    'Ahmed': 3,
    'Asia': 8,
    'Sara': 7,
  };

  var (list, count)=aGrade(students);
  print("${list}  scored above 4");
  print("${count} are below 4");
}

(List, int) aGrade(Map myMap){
  List myList=[];
  int count=0;
  for(var student in myMap.entries){
    if(student.value>=5){
      myList.add(student.key);
    }
    else{
      count++;
    }
  }
  return (myList, count);
}