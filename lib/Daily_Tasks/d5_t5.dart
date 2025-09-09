// 3. Group students by grade (A/B/C) using their score map (score >= 80 → A, 60–79 → B,
// <60 → C).

void main(){

  Map students={
    'Ali':75,
    'Hamid':97,
    'Javed':83,
    'Hashir':38,
    'Sameer':55,
    'Shayan':63,
  };

  List groupA=[];
  List groupB=[];
  List groupC=[];

  for(var student in students.entries){
    if(student.value>=80){
      groupA.add(student.key);
    }else if(student.value>=60 && student.value<=79){
      groupB.add(student.key);
    }else{
      groupC.add(student.key);
    }
  }

  print("Group A: $groupA");
  print("Group B: $groupB");
  print("Group C: $groupC");
}