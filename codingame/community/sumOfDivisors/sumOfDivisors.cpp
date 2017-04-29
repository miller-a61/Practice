#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
    long x;
    cin >> x; cin.ignore();
    long y = x/2;
    long sum = y;
    for (long i = 1; i <= y; i = i + 1) {
        sum = sum + y/i*(1+x/i);
        if (x/i%2 == 1)
            sum = sum + 1+y/i;
    }
    
    cout << sum << endl;
}

 