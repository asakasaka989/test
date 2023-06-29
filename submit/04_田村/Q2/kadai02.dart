import 'dart:io';
void main() {
	int i,j;

	for(i=1;i<=9;i++)
	{
		for(j=1;j<=9;j++)
		{
			stdout.write(i*j);
		}
        print("");
    }

	//List<int> downsort = [9, 2, 6, 5];
	List<int> downsort = [9, 2, 5, 5];
	downsort.sort((a, b) => -a.compareTo(b));
	print(downsort);
}

