#include<iostream>
#include<limits.h>
#include<sstream>
#include<string.h>
#include<vector>
using namespace std;
class Solution {
public:
    int maxArea(vector<int>& height) {
        int l=0;
        int h=height.size()-1;
        int maxarea=INT_MIN;
        while(l<h)
        {
            int area=(h-l)*min(height[l],height[h]);
            if(area>=maxarea)
                maxarea=area;
            if(min(height[l],height[h-1])>=min(height[l+1],height[h]))
            {
                h-=1;
            }
            else
                l+=1;
        }
        //cout<<maxarea<<std::endl;
        return maxarea;
    }
};


vector<int> stringToIntegerVector(string input) {
    vector<int> output;
    //trimLeftTrailingSpaces(input);
    //trimRightTrailingSpaces(input);
    input = input.substr(1, input.length() - 2);
    stringstream ss;
    ss.str(input);
    string item;
    char delim = ',';
    while (getline(ss, item, delim)) {
        output.push_back(stoi(item));
    }
    return output;
}

int main() {
    string line;
    while (getline(cin, line)) {
        vector<int> height = stringToIntegerVector(line);
        
        int ret = Solution().maxArea(height);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}
