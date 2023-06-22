// Q2-1 ----------------------------------------------

void main() {
   for (var i = 1; i < 10; i++) {
     var row = "";
     for (var j = 1; j < 10; j++) {
       row += ("${(i * j).toString().padLeft(2)} ");
     }
     print(row);
   }
 }