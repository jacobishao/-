#include<iostream>
#include<string>
#include<vector>
using namespace std;
void convert(long long &num, int radix, string str)
{
	int base = '0';
	if (radix>10)
		base = 'A' - 10;
	num = 0;
	for (int i = 0; i<str.size(); i++)
	{
		if (str[i] == ' ') continue;
		int n = str[i] - base;
		num = num*radix + n;
	}
}
int main()
{
	long long num = 0;
	int radix = 10;
	int instruction_number;
	cin >> instruction_number;
	long long secondop;
	int cur_instruction = 0;
	int flag = 0;
	long long x;
	vector<int> q;
	string instruction;
	getline(cin, instruction);
	while (cur_instruction<instruction_number)
	{

		string oprand = "";
		getline(cin, instruction);
		int i, j;
		for (int i = 0; i<instruction.size(); i++)
		{
			if (instruction[i] != ' ')
			{
				oprand += instruction[i];
				j = i;
			}
			else  break;
		}
		i = j;
		if (oprand == "NUM")
		{
			if (q.empty())
			{
				convert(num, radix, instruction.substr(i + 1, instruction.size() - i - 1));
			}
			else
			{
				flag = q.back();
				q.pop_back();
				switch (flag)
				{
				case 0:
					convert(num, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					break;
				case 1://加法
					convert(x, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					num += x;
					break;
				case 2://减法
					convert(x, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					num -= x;
					break;
				case 3://乘法
					convert(x, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					num *= x;
					break;
				case 4://div
					convert(x, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					num /= x;
					break;
				case 5://div
					convert(x, radix, instruction.substr(i + 1, instruction.size() - i - 1));
					num %= x;
					break;

				}


			}

		}
		else if (oprand == "CLEAR")
		{
			num = 0;
			q.push_back(0);
		}
		else if (oprand == "SUB")
		{
			//加法
			//flag = 2;
			q.push_back(2);
		}
		else if (oprand == "ADD")
		{
			//加法
			//flag = 1;
			q.push_back(1);
		}
		else if (oprand == "MUL")
		{
			//flag = 3;
			q.push_back(3);
		}
		else if (oprand == "DIV")
		{
			//flag = 4;
			q.push_back(4);
		}
		else if (oprand == "MOD")
		{
			//flag = 5;
			q.push_back(5);
		}
		else if (oprand == "CHANGE")
		{
			radix = 0;
			string str = instruction.substr(j + 1, instruction.size() - j - 1);
			for (int i = 0; i < str.size(); i++)
			{
				if (str[i] == ' ') continue;
				radix = radix * 10 + (str[i] - '0');
			}
		}
		else if (oprand == "EQUAL")
		{
			//flag = 0;
			std::vector<int> a;
			long long n = num;
			if (n== 0)
			{
				cout << n << endl;
				cur_instruction++;
				continue;
			}
			while (n >0)
			{
				a.push_back(n%radix);
				n/= radix;
			}
			for (int i = a.size() - 1; i >= 0; i--)
			{
				cout << a[i];
			}
			cout << endl;
		}
		cur_instruction++;
		
	}
	return 0;
}