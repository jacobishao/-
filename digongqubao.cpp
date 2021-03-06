#include<iostream>
#include<string.h>
#include<queue>
using namespace std;
#define N 1000000007
struct point;
int n,m,k;
//dp[i][j][k][l]代表第i+1行,第j+1列,持有k个宝物,且最大值为k-1的方案数.
long long dp[50][50][13][14];
int map[50][50];
queue<point> q;
struct point{
  int x;
  int y;
};
struct visit{
  int right;
  int down;
};
//visit vi[50][50];

  
int setdp(int i,int j, int k, int l, long long value)
{
  if(dp[i-1][j-1][k][l+1]==-1) dp[i-1][j-1][k][l+1]=0;
  dp[i-1][j-1][k][l+1]=(dp[i-1][j-1][k][l+1]+value)%N;
  return 0;
}
long long getdp(int i,int j,int k, int l)
{
  return dp[i-1][j-1][k][l+1];
}


void initmap()
{
  for(int i=0;i<n;i++)
    for(int j=0;j<m;j++)
   	cin>>map[i][j];

}
void initdp11()
{
  setdp(1,1,0,-1,1);
  setdp(1,1,1,map[0][0],1);
  //point p={.x=1,.y=1};
  //q.push(p);
}

int find(queue<point> que,int x, int y)
{
	while(!que.empty())
	{
		point e= que.front();
		que.pop();
		if(x==e.x&&y==e.y)
			return 0;
	}
	return -1;
}
	
int main()
{
  cin>>n>>m>>k;
  
  memset(dp, -1, sizeof(dp));
  //memset(vi, 0, sizeof(vi)); 
  initmap();
  point p={.x=1,.y=1};
  initdp11();
  q.push(p);
  while(!q.empty())
  {
	point e= q.front();
	q.pop();
	for(int i=0;i<13;i++)
		for(int j=-1;j<13;j++)
		{
			if(getdp(e.x,e.y,i,j)!=-1)
			{
				long long temp = getdp(e.x,e.y,i,j);
				//向右走两种情况
				if(e.y+1<=m)
				{
				        //vi[e.x-1][e.y+1-1].right=1;
					if(map[e.x-1][e.y+1-1]>j)
					{
						//拿
						setdp(e.x,e.y+1,i+1,map[e.x-1][e.y+1-1],temp);
						
						//不拿
						setdp(e.x,e.y+1,i,j,temp);
						if(find(q,e.x, e.y+1)==-1)
						{
							//right_flag=1;
							point a;
							a.x=e.x;
							a.y=e.y+1;
							q.push(a);
						}
					}
					else
					{
						setdp(e.x,e.y+1,i, j,temp);
						if(find(q,e.x, e.y+1)==-1)
						{
							point a;
							a.x=e.x;
					       		a.y=e.y+1;
							q.push(a);
						}

					}

				}
				//下走
				if(e.x+1<=n)
				{
				        //vi[e.x+1-1][e.y-1].down=1;
					if(map[e.x+1-1][e.y-1]>j)
					{
						//拿
						setdp(e.x+1,e.y,i+1,map[e.x+1-1][e.y-1],temp);
						//不拿
						setdp(e.x+1,e.y,i,j,temp);

						if(find(q,e.x+1,e.y)==-1)
						{
							point b;
							b.x= e.x+1;
							b.y= e.y;
							q.push(b);
						}
					}
					else
					{
						setdp(e.x+1,e.y,i,j,temp);
						if(find(q,e.x+1, e.y)==-1)
						{
							point b;
							b.x= e.x+1;
							b.y= e.y;
							q.push(b);
						}
					}


	
				}

								
			}
			

		}
  }
  long long sum=0;
  for(int i=-1;i<13;i++)
	  if(getdp(n,m,k,i)!=-1)
	    sum=(sum+getdp(n,m,k,i))%N;

  cout<<sum<<endl;
  return 0;
  }
