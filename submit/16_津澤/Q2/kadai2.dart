void main(){
  List<int> arr = [2, 6, 9, 8];
  decSort(arr);
  print(arr);
}

void decSort(List<int> arr){
  int temp;
  for (int i = 0; i < arr.length; i++){
    for (int j = i + 1; j < arr.length; j++){
      if( arr[i] < arr[j]){
        temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}