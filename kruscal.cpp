#include<iostream>
#include<algorithm>
#include<vector>
#include<cstring>
using namespace std;
struct Edge{
	int u;
	int v;
	int weight;
	friend bool operator <(Edge e1,Edge e2){  
		            return e1.weight<e2.weight;  
	}
};
int f[11001];
int cost[11000];
vector<Edge> E;

int find(int x)
{
	return f[x]<0?x:f[x]=find(f[x]);
}
bool merge(int x,int y)
{
	int x_father=find(x);
	int y_father=find(y);

	if(x_father!=y_father)
	{
		f[x_father]+=f[y_father];
		f[y_father]=x_father;
		return true;
	}
	return false;



}
int kruscal(int n,int m)
{
	sort(E.begin(),E.begin()+m);
	memset(f,-1,sizeof(f));
	int sum=0,count=0;
	for(int i=0;i<m;i++)
	{
		int u=E[i].u;
		int v=E[i].v;
		if(merge(u,v))
		{
			count++;
			sum+=E[i].weight;
		}
		else
		{
			if( E[i].weight<0)
				sum+=E[i].weight;
		}
	}

	if(count<n-1) return 0;
	return sum;
		

}

int main()
{
	int m,n;
	cin>>n>>m;
	for(int i=0;i<m;i++)
	{
		int u,v,w;
		cin>>u>>v>>w;
		E.push_back(Edge{u,v,w});

	}
	int w;
	int c=0;
	for(int i=1;i<=n;i++)
	{
		cin>>cost[i];
		if(cost[i]!=-1)
		{	
			c++;
			E.push_back(Edge{0,i,cost[i]});
		}
	}	
	int t;
	if(t =kruscal(n,m))
	{

		cout<<min(kruscal(n+1,m+c),t)<<endl;
	}
	else
		cout<<kruscal(n+1,m+c)<<endl;
		
	return 0;
}
