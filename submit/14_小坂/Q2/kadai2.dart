import 'Dart:io';

void main(){

	kadai2();

}

void kadai2(){
	//課題２
	var num=[2,6,9,8];
	print(num);

	var count=num.length;
	//ソートする
	for(int i=0;i<count;i++){
		for(int j=0;j<count;j++){
			if(num[i]>num[j]){
				var temp=num[i];
				num[i]=num[j];
				num[j]=temp;

			}
			
		}
	}

	print(num);
}

