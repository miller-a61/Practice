#include <Foundation/Foundation.h>

@interface NSString (x)
- (NSString *) repeatStringByNumberOfTimes: (NSUInteger) times;
@end
 
@implementation NSString (x)
- (NSString *) repeatStringByNumberOfTimes: (NSUInteger) times {
    return [@"" stringByPaddingToLength:[self length]*times withString:self startingAtIndex:0];
}
@end

int main(int argc, const char * argv[]) {
    int N;
    int i = 0;
    int j = 0;
    int numspaces;
    int numspacesA;
    int numstars;
    int numstarsA;
    
    NSString *dot = @".";
    
    scanf("%d", &N);

    while ( i < N ) {
        numspaces = 2 * N - i - 1;
        numstars = 2 * i + 1;

        if (i == 0) {
            NSString *aSpaces = [@" " repeatStringByNumberOfTimes: numspaces - 1];
            NSString *aStars = [@"*" repeatStringByNumberOfTimes: numstars];
            printf("%s%s%s\n", [dot UTF8String], [aSpaces UTF8String], [aStars UTF8String]);            
        }else{
            NSString *aSpaces = [@" " repeatStringByNumberOfTimes: numspaces];            
            NSString *aStars = [@"*" repeatStringByNumberOfTimes: numstars];
            printf("%s%s\n", [aSpaces UTF8String], [aStars UTF8String]);
        }
        i = i + 1;
    }
    
    while ( j < N ) {
        numspaces = N - j - 1;
        numspacesA = (2 * N) - (2 * j) - 1;
        numstars = 2 * j + 1;
        numstarsA = 2 * j + 1;

        NSString *aSpaces = [@" " repeatStringByNumberOfTimes: numspaces];            
        NSString *bSpaces = [@" " repeatStringByNumberOfTimes: numspacesA];
        NSString *aStars = [@"*" repeatStringByNumberOfTimes: numstars];
        NSString *bStars = [@"*" repeatStringByNumberOfTimes: numstarsA];
        
        //printf("%s%s%s%s\n", [aSpaces UTF8String], [aStars UTF8String], [bSpaces UTF8String], [aStars UTF8String]);
        printf("%s%s", [aSpaces UTF8String], [aStars UTF8String]);     
        printf("%s%s\n", [bSpaces UTF8String], [aStars UTF8String]);   
        j = j + 1;
    }
    
    
}