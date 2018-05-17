#include<iostream>
#include<string>
#include<cassert> 
using namespace std;
class Solution {
public:
	bool isMatch(string s, string p) {
		//递归结束的临界条件	

		//cout << "s: " << s<<endl;
		//cout << "p: " << p << endl;

		if (s == "")
		{
			if (p == "")
				return true;
			else if (p.length() >= 2 && p[1] == '*')
			{
				string newp;
				if (p.length() == 2) newp = "";
				else newp = p.substr(2);
				return isMatch(s, newp);
			}
			else
				return false;

		}

		//s串的长度大于等于1
		//s的第一个字符可以匹配上
		if (p.length() >= 1 && (s[0] == p[0] || p[0] == '.'))
		{

			if (p.length() >= 2 && p[1] == '*')
			{
				string newp;
				if (p.length() == 2) newp = "";
				else newp = p.substr(2);
				string news;
				if (s.length() == 1) news = "";
				else news = s.substr(1);
				
				//return isMatch(news, p) || isMatch(news, newp)||isMatch(s,newp);
				return isMatch(news, p) || isMatch(s, newp);
			}
			else
			{
				string news;
				if (s.length() == 1) news = "";
				else news = s.substr(1);
				string newp;
				if (p.length() == 1) newp = "";
				else newp = p.substr(1);
				return isMatch(news, newp);
			}
		}
		//s的第一个字符匹配不上
		else if (p.length() >= 2 && p[1] == '*')
		{
			string newp;
			if (p.length() == 2) newp = "";
			else newp = p.substr(2);
			return isMatch(s, newp);
		}
		return false;

	}
};

string stringToString(string input) {
	assert(input.length() >= 2);
	string result;
	for (int i = 1; i < input.length() - 1; i++) {
		char currentChar = input[i];
		if (input[i] == '\\') {
			char nextChar = input[i + 1];
			switch (nextChar) {
			case '\"': result.push_back('\"'); break;
			case '/': result.push_back('/'); break;
			case '\\': result.push_back('\\'); break;
			case 'b': result.push_back('\b'); break;
			case 'f': result.push_back('\f'); break;
			case 'r': result.push_back('\r'); break;
			case 'n': result.push_back('\n'); break;
			case 't': result.push_back('\t'); break;
			default: break;
			}
			i++;
		}
		else {
			result.push_back(currentChar);
		}
	}
	return result;
}

string boolToString(bool input) {
	return input ? "True" : "False";
}

int main() {
	string line;
	while (getline(cin, line)) {
		string s = stringToString(line);
		getline(cin, line);
		string p = stringToString(line);

		bool ret = Solution().isMatch(s, p);

		string out = boolToString(ret);
		cout << out << endl;
	}
	return 0;
}