void main() {

  for (int x = 1; x <= 9; x++) {

    String kuku = '';

    for (int y = 1; y <= 9; y++) {

      kuku += '${(x * y).toString().padLeft(2)} ';

    }
    print(kuku);
}

var num = <int>[2, 6, 9, 8];

    num.sort((a, b) => -a.compareTo(b));

   print(num);
}