#include<iostream>
#include<string.h>
#include<algorithm>
#include<limits.h>
using namespace std;
long long colsum[500][500];
int arr[500][500];
//求数组的最大连续和
long long  maxsum(int j,int i,int m)
{
	long long  s[m];
	s[0]=colsum[j][0]-(i-1>=0?colsum[i-1][0]:0);
	long long mx=s[0];
	long long a;

	for(int z=1;z<m;z++)
	{
		a=colsum[j][z]-(i-1>=0?colsum[i-1][z]:0);

		s[z]=max(s[z-1]+a,a);
		if(s[z]>mx)
			mx=s[z];
	}		
	return mx;

}


int main()
{
  int m,n;
  cin>>n>>m;
  //int arr[n][m];
  long long tsum;
  memset(colsum,0, sizeof(colsum));
  for(int i=0;i<n;i++)
  {
    
    for(int j=0;j<m;j++)
      {
	cin>>arr[i][j];
	colsum[i][j]+=arr[i][j]+(i-1>=0?colsum[i-1][j]:0);

      }
  }
  long long s=-10000;
  for(int i=0;i<n;i++)
	  for(int j=i;j<n;j++)
	  {
		tsum=maxsum(j,i,m);
		if(tsum>s) s=tsum;
			
		
	  }


  cout<<s<<endl;
}
