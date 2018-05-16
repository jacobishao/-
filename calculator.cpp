#include<iostream>
using namespace std;
void convert(long long &num,int radix,string str)
{

	int base=0;
	if(k>10)
	{
		base=´A´-10;
	}	

	
	for(int i=0;i<str.size();i++)
	{
		int num=str[i]-base;

	}	


}

int main()
{
	long long num=0;
	int radix=10;
	int instruction_number;
	cin>>instruction_number;
	long long secondop;
	int cur_instruction=0;
	int flag=0;
	while(cur_instruction<instruction_number)
	{
		string instruction;
		string oprand=¨¨;
		getline(cin,instruction);
		for(int i=0;i<instruction.size();i++)
		{
			if(instruction[i]!=´ ´)
			{
				oprand+=instruction[i];
			}
			else
			{
				switch(oprand){
					case ¨NUM¨:
						if(flag==0)
						{
							convert(num,radix,instruction.substr(i+1,instruction.size()-i-2);
						}
			}
		}
		


	}

	return 0;
}
