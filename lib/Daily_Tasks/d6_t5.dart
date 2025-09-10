// Implement a stack for a browser history, allowing for forward and backward navigation


//my solution with flaws (details in separate document)
void main(){

  var tab1="Tab1";
  var tab2="Tab2";
  var tab3="Tab3";
  var currentTab='';

  List myStack=[];
  myStack.add(tab1);
  myStack.add(tab2);
  myStack.add(tab3);
  currentTab=myStack[2];

  backButton(myStack, currentTab);

  history(myStack);


}

void backButton(List stack, String currentTab){
  currentTab=currentTab[-1];
  print("Back button pressed. Current tab is $currentTab");

}

void forwardButton(List stack, String currentTab){
  currentTab+=currentTab;
  print("Forward button pressed. Current tab is $currentTab");
}

void history(List stack){
  print(stack);
}

// List<String> backHistory = [];
// List<String> forwardHistory = [];
// String? currentTab; // Use String? to indicate it can be null initially
//
// void navigateTo(String newTab) {
//   if (currentTab != null) {
//     backHistory.add(currentTab!); // Add current page to back history
//   }
//   currentTab = newTab;
//   forwardHistory.clear(); // When you navigate to a new page, the forward history is cleared
//   print("Navigated to: $currentTab");
//   printHistoryState();
// }
//
// void goBack() {
//   if (backHistory.isEmpty) {
//     print("Cannot go back. No history.");
//     return;
//   }
//   if (currentTab != null) {
//     forwardHistory.add(currentTab!); // Current page goes to forward stack
//   }
//   currentTab = backHistory.removeLast(); // New current is last item from back history
//   print("Went back to: $currentTab");
//   printHistoryState();
// }
//
// void goForward() {
//   if (forwardHistory.isEmpty) {
//     print("Cannot go forward. No history.");
//     return;
//   }
//   if (currentTab != null) {
//     backHistory.add(currentTab!); // Current page goes to back stack
//   }
//   currentTab = forwardHistory.removeLast(); // New current is last from forward history
//   print("Went forward to: $currentTab");
//   printHistoryState();
// }
//
// void printHistoryState() {
//   print("  Current: $currentTab");
//   print("  Back Stack: $backHistory");
//   print("  Forward Stack: $forwardHistory");
//   print("-" * 20);
// }
//
// void main() {
//   navigateTo("Tab1");
//   navigateTo("Tab2");
//   navigateTo("Tab3");
//
//   goBack(); // Should go to Tab2
//   goBack(); // Should go to Tab1
//
//   goForward(); // Should go to Tab2
//
//   navigateTo("Tab4"); // Forward history should clear, Tab2 goes to back
//
//   goBack(); // Should go to Tab2
//   goForward(); // Should go to Tab4
//   goForward(); // Cannot go forward
// }