void main() {
  sort(2,6,9,8);
}

void sort(a,b,c,d) {
  var num = [a,b,c,d];
  for (var i = 0; i < num.length-1; i++) {
    for (var j = i+1; j < num.length; j++) {
      if (num[i] < num[j]) {
        int temp = num[i];
        num[i] = num[j];
        num[j] = temp;
      }
    }
  }
  print(num);
}