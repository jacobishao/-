#include<iostream>
#include<cmath>
using namespace std;

struct point{
	int x;
	int y;
};
point youju[25];
point longmin[50];

int dis[50][25];
double sum=10000000;

double calsum(int b[],int M,int n)
{
	double sum=0;
	for(int j=0;j<n;j++)
	{
		double  temp= 10000000;
		for(int i=0;i<M;i++)
		{	
			double d=sqrt((double)(youju[i].x-longmin[j].x)*(youju[i].x-longmin[j].x)+(youju[i].y-longmin[j].y)*(youju[i].y-longmin[j].y));
			if(d<temp) temp=d;
		}
		sum+=temp;
	}
	return sum;
	
}


void combine( point a[], int n, int m,  int b[],int c[],int nn, const int M )
	 
{
	 
	  for(int i=n; i>=m; i--)   // 注意这里的循环范围
		   {
			     
			        b[m-1] = i - 1;
				 
				    if (m > 1)
					     
					          combine(a,i-1,m-1,b,c,nn,M);
				     
				        else                     // m == 1, 输出一个组合
						 

				       {
							     	  if(calsum(b,M,nn)<sum)
							          for(int j=M-1; j>=0; j--)
									   	c[j]=b[j];
									        //cout << a[b[j]] << " ";
								   
								        	//cout << endl;
									 
									    }
					 
					  }
	   
}


int main()
{
	int n,m,k;
	cin>>n>>m>>k;
	
	for(int i=0;i<n;i++)
	{
		int x;int y;
		cin>>x>>y;
		longmin[i].x=x;
		longmin[i].y=y;
	}
	for(int i=0;i<m;i++)
	{
		int x;int y;
		cin>>x>>y;
		youju[i].x=x;
		youju[i].y=y;
	}

	int b[10],c[10];
	
	combine(youju,m,k,b,c,n,k);
	

		




	

		
	return 0;
}
