void main(){
  List<int> nums = [2, 6, 9, 8];
  print(nums);
  decOrder(nums);
  print(nums);
}

void decOrder(List<int> nums){
  int temp;
  for (int i = 0; i < nums.length; i++){
    for (int j = i + 1; j < nums.length; j++){
      if( nums[i] < nums[j]){
        temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
}