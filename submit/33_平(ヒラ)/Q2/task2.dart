List<int> sortDescending(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a));
  return numbers;
}

void main() {
  List<int> numbers = [2, 6, 9, 8];
  List<int> sortedNumbers = sortDescending(numbers);
  String result = sortedNumbers.join();
  print(result); // 出力: 9862

  List<int> numbers2 = [1, 1, 1, 2];
  List<int> sortedNumbers2 = sortDescending(numbers2);
  String result2 = sortedNumbers2.join();
  print(result2); // 出力: 2111
}
