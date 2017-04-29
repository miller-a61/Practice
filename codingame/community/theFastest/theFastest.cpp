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
    int N;
    int fastest = 86400;
    string shours, smin, ssec;
    int hours, min, sec, ttime;
    string output; 
    
    cin >> N; cin.ignore();
    for (int i = 0; i < N; i++) {
        string t;
        cin >> t; cin.ignore();
        shours = t.substr(0, 2);
        smin = t.substr(3, 2);
        ssec = t.substr(6, 2);
        hours = stoi (shours);
        min = stoi (smin);
        sec = stoi (ssec);
        ttime = (hours * 3600) + (min * 60) + sec;
        
        if (ttime < fastest) {
            fastest = ttime;
            output = t;
        }
    }

    // Write an action using cout. DON'T FORGET THE "<< endl"
    // To debug: cerr << "Debug messages..." << endl;

    cout << output << endl;
}