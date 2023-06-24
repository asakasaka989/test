void main() {
    List<int> list = [3, 5, 1, 4, 2, 6];
    desc(list);
}

void desc(List<int> list) {
    list.sort((a, b) => -a.compareTo(b));
    print(list);
}
