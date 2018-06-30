class Solution {
public:
    int longestValidParentheses(string s) {
        int sum=0;
        //int Parentheses[1000];
        //Parentheses[0]=0;
        int longest=0;
        std::stack<char> mystack;
	std::stack<int> oderstack;
        for(int i=0;i<s.size();i++)
        {
            cout<<s[i]<<endl;
            if(s[i]=='(')
            {
                cout<<"branch 1"<<endl;
                cout<<"压栈"<<endl;
                 mystack.push(s[i]);
		 orderstack.push(i);
                 
            }
            else
            {
                cout<<"branch 2"<<endl;
                if(mystack.empty()||mystack.top()==')')
                {
                    cout<<"压栈"<<endl;
                    mystack.push(s[i]);
		    orderstack.push(i);
                }
                else
                {
                    cout<<"弹栈"<<endl;
                    mystack.pop();
		    int temp= i-orderstack.top()+1;
                    //sum+=2;
		    if(temp>longest)
		      longest=temp;
                }
                    

            }
        }
        return longest;
        
    }
};
