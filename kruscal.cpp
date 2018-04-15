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
int f[10001];

int find(int x)
{
	return f[x]>0?find(f[x]):x;
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
int kruscal(int n,int m, vector<Edge> &E)
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
			if( E[i].weight<0)
				sum+=E[i].weight;

	}

	if(count<n-1) return 0;
	return sum;
		

}

int main()
{
	int m,n;
	cin>>n>>m;
	vector<Edge> E;
	for(int i=0;i<m;i++)
	{
		int u,v,w;
		cin>>u>>v>>w;
		E.push_back(Edge{u,v,w});

	}
	int w;
	int c=0;
	for(int i=0;i<n;i++)
		if(cin >>w&&w!=-1)
		{	
			c++;
			E.push_back(Edge{0,i+1,w});
		}
	
	int t;
	if(t =kruscal(n,m,E))
	{
		cout<<min(kruscal(n+1,m+c,E),t)<<endl;
	}
	cout<<kruscal(n+1,m+c,E)<<endl;
		
	return 0;
}
