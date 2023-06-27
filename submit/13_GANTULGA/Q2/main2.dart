void main() {
  List<int> list = [2, 6, 9, 8];
  int result = desc(list);
  print(result);
}

int desc(List<int> arr) {
  list.sort((a, b) => b.compareTo(a));
  String resultStr = list.join();
  return int.parse(resultStr);
}