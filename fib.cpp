#include<iostream>
using namespace std;
//矩阵的大小
#define N 2
long long p;
//定义矩阵
struct Matrix{
	long long a[N][N];
};


//矩阵乘法
Matrix mul(Matrix m1,Matrix m2)
{
	Matrix m3;
	for(int i=0;i<N;i++)
		for(int j=0;j<N;j++)
		{
			int temp=0;
			for(int k=0;k<N;k++)
			  temp+=(m1.a[i][k]*m2.a[k][j])%p;
			m3.a[i][j]=temp%p;
		}
	return m3;
}

Matrix A={ 1, 1,
	   1,0 };
//使用快速矩阵幂
Matrix power(Matrix A, long long n)
{
	Matrix s={ 1, 0, 
		   0, 1 };
	
	while(n>0)
	{
		if(n%2) s=mul(s,A);
		A=mul(A,A);
		n=n>>1;
		
	}
	return s;	
}
long long getF(long long i)
{

	Matrix ans= power(A,i);
	return  ans.a[1][0];
}


int main()
{
	long long m,n;
  	cin>>n>>m>>p;
	
	n=n+2;
	
	long long temp;
	if((n/m)%2)
	{
		temp=getF(n-n%m);
	}
	else
		temp=getF(m)-getF(m-n%m);
	
	long long ans;
		
	//m为奇数
	if(m%2)
	{
		if(m/n%2==0&&(m/(n*2))%2==0)
				ans=getF(n%m);
		if(m/n%2==0&&(m/(n*2))%2!=0)
		  ans=((getF(m)-getF(n%m))%p+p)%p;
		if(m/n%2!=0&&(m/(n*2))%2!=0)
		  ans=(((getF(m)-temp)%p+p))%p;
		if(m/n%2!=0&&(m/(n*2))%2==0)
		  ans=(temp+p)%p;


	}
	else
	{
		if(m/n%2==0)
			ans=getF(n%m);
		else
			ans=temp;
	}	
	
	cout<<(ans-1+p)%p<<endl;

	return 0;

}



