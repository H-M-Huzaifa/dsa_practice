void main(){
  int a=0;
  int b=1;

  for(int i =0; i <=20; i++){
    print(a);
    int next =a+b;
    a=b;
    b=next;
  }

//   int b=0;
//
// for(int a =0; a<=20; a++){
//   b=b+a;
//   print(b);
// }
}