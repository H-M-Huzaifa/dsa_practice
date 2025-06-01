  //Given a list of strings, return only those longer than 3 characters
void main(){
List myStrings=["Bye","Hello","Hi","Representative"];
List filtered=[];


for(int i=0; i<=myStrings.length-1; i++) {
  if(myStrings[i].length >3){
    filtered.add(myStrings[i]);
  }

}
print(filtered);
}
