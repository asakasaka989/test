import 'dart:ffi';
import 'dart:io';

void main(){

  Calc calc = Calc();
  
  // 課題２-１
  calc.kuku();

  // 課題２-２
  List<int> list = [7,3,5,7,8,3,2,1];
  calc.sort(list);


} 

class Calc{

  void kuku(){

      // 九九表
    for(int i = 1; i < 10 ;i++){

      // 改行なしのprintがみつからなかったため特殊な書き方
      String CrrStr = "";

      for(int j = 1; j < 10; j++){
        String result = (i * j).toString();

        //見やすくするため工夫
        if(result.length == 2){
          CrrStr += result + " ";   
        }
        else{
          CrrStr +=  " " + result + " ";  
        }    
      }
      print(CrrStr);
    }

    print("");

  }

  void sort(List<int> list){

    String CrrStr = "";

    list.sort((start,end) => end.compareTo(start));
    
    for(int i = 0; i < list.length;i++){

      CrrStr += list[i].toString();
    }

    print(CrrStr);
  }


}