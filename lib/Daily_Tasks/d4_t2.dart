//Create a function that returns the name of the student with the highest score

void main(){
  Map students={
    'Ali':5,
    'Hamid': 9,
    'Zara': 2,
    'Ahmed': 3,
    'Asia': 8,
    'Sara': 7,
  };

  highScorer(students);
}

void highScorer(Map myMap){
  int high_score=0;
  var name='';
  for(var student in myMap.entries){
    if(student.value>high_score){
    high_score=student.value;
    name=student.key;
  }
  }
  print("$name has the highest score of $high_score");
}