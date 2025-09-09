// Create a map of employees with salaries. Add new entries, update one, and use map() to
// double salaries.
//Use putIfAbsent() to avoid overwriting existing entries.

void main(){
  Map employees={
    'Ali': 5000,
    'Rehaman': 6000,
    'Danyal': 9700,
    'Zahid': 52100,
    'Usman': 80000,
  };

  print("Initially the Map is $employees");

  //adding new if absent
  employees.putIfAbsent('Shahid', ()=> 2000);
  print("after addition $employees");

  //updating
  employees.update('Usman', (value) => 200,);
  print("after update $employees");

  //using map to double salaries
  employees=employees.map((key, value) => MapEntry(key, value*2),);
  print("after double $employees");

}
