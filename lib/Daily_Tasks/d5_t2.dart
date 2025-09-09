//Use entries to print formatted "Employee: Salary" strings

void main() {
  Map employees = {
    'Ali': 5000,
    'Rehaman': 6000,
    'Danyal': 9700,
    'Zahid': 52100,
    'Usman': 80000,
  };

  print("Initially the Map is $employees");

  for (var entry in employees.entries) {
    print("Employee:${entry.key} Salary: ${entry.value}");
  }
}
