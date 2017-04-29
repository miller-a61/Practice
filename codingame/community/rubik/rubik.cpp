#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main()
{
    int N;
    cin >> N; cin.ignore();

    N = N>1?6*N*(N-2)+8:1;

    cout << N << endl;
}