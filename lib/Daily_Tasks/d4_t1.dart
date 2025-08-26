//Create a map of student names and scores.

void main(){

  Map<String, int> students={
    'ali':5,
    'zara': 2
  };

  print(students.length);

  //Add a new entry, update one score, and delete one student.
  students.addAll({'ahmed':3, 'asia':9});
  print(students);

  //Print all keys and values.

  print(students.entries);
  print('${students.keys},${students.values}');


}