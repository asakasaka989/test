void main() {
  sort([1, 2, 3, 4]);
}

void sort(List<int> num) {
  for (var a = 0; a < num.length - 1; a++) {
    for (var b = a + 1; b < num.length; b++) {
      if (num[a] < num[b]) {
        int temp = num[a];
        num[a] = num[b];
        num[b] = temp;
      }
    }
  }
  print(num);
}