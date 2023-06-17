import 'Dart:io';

void main(){
	//課題１
	for(int x=1;x<10;x++){
		for(int y=1;y<10;y++){
			stdout.write(x*y);
			if(x*y<10){
				stdout.write(" ");
			}
			stdout.write(" ");
		}
		print(" ");

	}	



}


