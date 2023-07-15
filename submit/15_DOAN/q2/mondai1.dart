void main() {
  var rowCount = 9;
  var columnCount = 9;

  for (var i = 1; i <= rowCount; i++) {
    var number = "";
    for (var j = 1; j <= columnCount; j++) {
      number += ("${(i * j).toString().padLeft(2)} ");

    }
    //print 
     print (number);
  }
}
