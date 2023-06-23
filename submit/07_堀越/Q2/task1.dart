//1)9*9表を作成せよ
void main() {


  for (int x = 1; x <= 9; x++) {

    String row = '';

    for (int y = 1; y <= 9; y++) {
      
      row += '${(x * y).toString().padLeft(2)} ';

    }
    print(row);
  }
}



