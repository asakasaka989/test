void main() {
  for (var i = 1; i <= 9; i++) {
    String output = "";
    for (var j = 1; j <= 9; j++) {
      output += '${(i * j).toString().padLeft(3)}';
    }
      print(output);
  }
}