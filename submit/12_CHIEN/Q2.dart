import 'Dart:io';
  void main(){

  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      int result = i * j;
      String space = (result < 10) ? "  " : " ";
      stdout.write('$result$space');

    }
    print('\n');
  }
  

     var a = [1, 2, 3, 4, 5, 6, 7, 8, 9];

     narabikae(a);

  }

  
  
  void narabikae(List newList){
  newList.sort((a, b) => b.compareTo(a));
  
  print(newList); 
  }