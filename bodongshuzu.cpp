#include<iostream>

using namespace std;

//arr数组arr[i][j]表示前i个和为j的方案情况
int arr[1000][100000000000]={0};

int main()
{
  int n,s,a,b;
  cin >> n>> s>>a>>b;

  int count=0;
  

  long long  sum_range=(n-1)*n*a/2;
   arr[1][0]=1;
  for(int i=1;i<n;i++)
	  for(int j=1;j<sum_range;j++)
	{
		/*	
		if(i==1) 
		{
			if(j==1)
				arr[i][j]=1;
			else
				arr[i][j]=0;
		}

		else
			arr[i][j]=arr[i-1][j]+arr[i-1][j-(i-1)*a];
		*/
		if(j-(i-1)*a>=0)
		{

			arr[i][j]=arr[i-1][j]+arr[i-1][j-(i-1)*a];

		}
		esle
			arr[i][j]=arr[i-1][j];	

	}	


  int start =(n-1)*n*a/2;
  //cout << start;
  for(int i=0;i<=(n-1)*n/2;i++)
    {
      int x=(s-(start-i*a-i*b))%n;
      if(x==0)
	count=(count+1)%100000007;
    }

  cout<<count;
  
}
