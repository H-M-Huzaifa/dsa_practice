//1. Write a function that increases every student's score by 10%.

void main() {
  Map students = {
    "Nadir": 60,
    "Hamid": 30,
    "Qadir": 62,
    "Zaheer": 55,
    "Samina": 27,
    "Ayesha": 85,
    "Sumaira": 49,
  };
  
 marks_increament(students);
}
void marks_increament(Map students){
  students=students.map((key, value) => MapEntry(key, (value*1.1).toInt()),);


  print("After 10% increament: ${students}");

}