#include<iostream>
#include<limits.h>
#include<string.h>
#include<algorithm>
using namespace std;
int maxsum[500][500];
int sum[100];

int  dp(int i,int j)
{
	if(maxsum[i][j]!=INT_MIN) return maxsum[i][i];
	if(i<j)
	{
		maxsum[i][j]=max(dp(i-1,j),max(dp(i,j-1),sum[j]-(i-1>=0?sum[i-1]:0)));
		//maxsum[i][j]=max(dp(i-1,j),sum[j]-(i-1>=0?sum[i-1]:0));
	}
	else if(i==j)
		maxsum[i][j]=sum[j]-(i-1>=0?sum[i-1]:0);
	return maxsum[i][j];
}
				
int main()
{
	int a[100];
	int n;
	cin>>n;
	int s=0;
	for(int i=0;i<n;i++)
	{
		cin>> a[i];
		s+=a[i];
		sum[i]=s;
	}
	//memset(maxsum,-1, sizeof(maxsum));
	for(int i=0;i<n;i++)
		for(int j=0;j<n;j++)
		{
			maxsum[i][j]=INT_MIN;
		}
	cout<<dp(0,n-1)<<endl;
		
	return 0;
}
