void main() {
  List<int> arr = [2, 6, 9, 8];
  int result = sortDescending(arr);
  print(result);

  arr = [1, 1, 1, 2];
  result = sortDescending(arr);
  print(result);
}

int sortDescending(List<int> arr) {
  arr.sort((a, b) => b.compareTo(a));
  String resultString = arr.join();
  return int.parse(resultString);
}