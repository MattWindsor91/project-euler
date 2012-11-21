#include <iostream>
#include <math.h>

using namespace std; 


int main() {
	unsigned int x, n3,n5, n15, sum3, sum15, sum5, total;

	cin>>x; 

	n3 = floor((x-1)/3);
	n5 = floor((x-1)/5);
	n15 = floor((x-1)/15);

	sum3 = (n3*(n3+1))/2;
	sum5 = (n5*(n5+1))/2;
	sum15 = (n15*(n15+1))/2;

	total = 3*sum3+5*sum5-sum15*15;

	cout<<total<<"\n";

	return 0;
}
