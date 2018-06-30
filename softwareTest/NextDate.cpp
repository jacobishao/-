#include"stdafx.h"
#include <iostream>
using namespace std;

void NextDate(int year,int month,int day);
void main()
{
	int year=0,month=0,day=0;
	NextDate(year,month,day);
}

void NextDate(int year,int month,int day)
{
	cout<<"请输入年份："<<endl;
	cin>>year;
	while(!(year>=1911 && year<=2013))
	{
		cout<<"年份超过界限，请重新输入"<<endl;
		
		cin>>year;
	}
	cout<<"请输入月份："<<endl;
	cin>>month;
	while (month>12||month<1)
	{
		cout<<"月份输入有误，请重新输入"<<endl;
		cin>>month;
	}
	cout<<"请输入日期："<<endl;
	cin>>day;
	while (day>31||day<1)
	{
		cout<<"日期输入有误，请重新输入"<<endl;
		cin>>day;
	}
while(month==4&&day==31||month==6&&day==31||month==9&&day==31||month==11&&day==31)
	{
		cout<<"小月没有31号"<<endl;
        cin>>day;
	}    if((year%4==0 && year%100!=0) || (year%400==0))  //检查闰年；
	{
		int i=0;
		i=day-29;
		while(month==2&&i>0)
		{
			cout<<"本月是闰月，请在1-29之间从新输入日期"<<endl;
			cin>>day;	
		}
		if(month==2&&day==29)
		{
			month=3;
			day=1;
	
		}
		else day++;
	}
	else day++;
	//月底计算；
		switch(month)
	{
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
			if (day==32)
			{
				month++;
				day=1;
				cout<<"明天是："<<year<<'/'<<month<<'/'<<day<<endl;
			}
			break;
		case 2:
			if(day==29)
			{
				month=3;
				day=1;
				cout<<"明天是："<<year<<'/'<<month<<'/'<<day<<endl;
			}
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			if(day==31)
			{
				month++;
				day=1;
				cout<<"明天是："<<year<<'/'<<month<<'/'<<day<<endl;
			}
			break;
		case 12:
			if(day==32)
			{
				year++;
				month=1;
				day=1;
				cout<<"明天是："<<year<<'/'<<month<<'/'<<day<<endl;
			}
			break;
		}
	cout<<"明天是："<<year<<'/'<<month<<'/'<<day<<endl;
}
