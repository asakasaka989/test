void main() {
    var list1 = [1, 2, 3, 4];
    
    sort(list1);
}

void sort(List x){
    x.sort((a, b) => -a.compareTo(b));

    print(x);
}