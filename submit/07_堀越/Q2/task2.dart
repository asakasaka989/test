//2)整数配列を与えられたとき、大きい順（降順）に並び替えるメソッドを記述せよ


void main(){
   var num = <int>[2, 6, 9, 8];

   //マイナス（ー）を付けて昇順から降順に
   num.sort((a, b) => -a.compareTo(b));



   print(num);

}

