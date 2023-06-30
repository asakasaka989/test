void main() {
  List<int> numbers = [2, 6, 9, 8];
  int sortNumber = sortDesc(numbers);
  print(sortNumber);  // Output: 9862
}

 

int sortDesc(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a));
  int result = 0;
  for (var number in numbers) {
    result = result * 10 + number;
  }
  return result;
}