//Implement a stack using a list and perform push, pop, and peek operations.

void main(){

  List stack=[];

  //push
  stack.add(10);
  stack.add(20);

  //pop
  print(stack.last);
  stack.removeLast();

  //peek
  print(stack.last);

}