#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <iterator>
#include <sstream>


using namespace std;

int main()
{
    int n; // the number of temperatures to analyse
    cin >> n; cin.ignore();
    std::string input; // the n temperatures expressed as integers ranging from -273 to 5526
    getline(cin, input);

    int closest = 5527;
    int tst;
    
    std::vector<int> inputs;
    std::istringstream in( input );
    std:copy( std::istream_iterator<int> (in), std::istream_iterator<int>(),
        std::back_inserter( inputs ));
        
    for(int i : inputs) {
        if ( abs(closest) == abs(i) and closest < 0 ) {
            closest = i;
        } else if (abs(closest) > abs(i) ) {
            closest = i;
        }
    
    }

    if (closest == 5527 ) {
        closest = 0;
    }
    
    cout << closest << endl;
}



