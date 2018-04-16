#include<iostream>
#include<cstring>
#include<vector>
#include<algorithm>

using namespace std;
struct edge{
	int u,v,w;
	friend bool operator <(edge e1,edge e2){
		return e1.w<e2.w;
	}
};
vector<edge>edges;
int n,m,ans;
int cost[11000];
int f[11000];
int find(int x)
{
	return f[x]<0?x:f[x]=find(f[x]);
}
bool merge(int x,int y)
{
	int rx=find(x);int ry=find(y);
	if(rx!=ry)
	{
		f[rx]+=f[ry];
		f[ry]=rx;
		return true; 
	}
	return false;
}
int  kruscal(int nn,int mm)//传入的点数和边数 
{
	sort(edges.begin(),edges.begin()+mm);
	
	memset(f,-1,sizeof(f));
	int cnt,sum;cnt=sum=0;
	for(int i=0;i<mm;i++)
	{
		int x=edges[i].u;int y=edges[i].v;
		if(merge(x,y))
		{
			sum+=edges[i].w;
			++cnt;
			//if(++cnt==nn-1)break;
		}//注意和kruscal的这里区别 
		else{
			if(edges[i].w<0){
				sum+=edges[i].w;
			}
		}
	}
	 if(cnt<nn-1)return 0;else return sum;
}
int main()
{
	cin>>n>>m;
	for(int i=1;i<=m;i++)
	{
		int x,y,z;cin>>x>>y>>z;
		edges.push_back(edge{x,y,z});
	
	}
	int t,cc=0;
	for(int i=1;i<=n;i++)
	{
		cin>>cost[i];
		if(cost[i]!=-1)
		{
			cc++;
			edges.push_back(edge{0,i,cost[i]});
		}
	}
	
	if(t=kruscal(n,m)){
		ans=min(t,kruscal(n+1,m+cc)); 
		cout<<ans<<endl;
	}
	else cout<<kruscal(n+1,m+cc);

	return 0;
 } 
