void main() {
  for (var i = 1; i <= 9; i++) {
    for (var j = 1; j <= 9; j++) {
      var result = i * j;
      print('$result\t');
    }
    print('\n');
  }
}
//main2.dart
void main() {
  List<int> array1 = [2, 6, 9, 8];
  List<int> array2 = [1, 1, 1, 2];

  print("降順に並び替えた結果:");
  print(sortDescending(array1).join());
  print(sortDescending(array2).join());
}

List<int> sortDescending(List<int> array) {
  array.sort((a, b) => b.compareTo(a));
  return array;
}
