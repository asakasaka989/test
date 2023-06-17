// Q2-2 ----------------------------------------------

void main() {
    var list1 = [2, 6, 9, 8];
    var list2 = [1, 1, 1, 2];
    
    sort(list1);
    sort(list2);
}

void sort(List x){
    var row = "";

    x.sort((a, b) => -a.compareTo(b));
    for(var i = 0; i < x.length; i++){
        row += x[i].toString();
    }
    print(row);
}