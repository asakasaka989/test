void main(){
  // 9*9表
  for(int i = 1; i <= 9; i++){
  String row = "";
  for(int j = 1; j<= 9 ; j++){
    int int_ans = i * j;
    String str_ans = int_ans.toString();
    row += str_ans;
    if(j < 9){
      row += " ";
      if(i*(j+1) < 10){
        row += " ";
      }
    }
  }
    print(row);
  }
}
