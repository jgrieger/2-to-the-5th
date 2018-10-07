// cerner_2^5_2018
#import <Foundation/Foundation.h>
#import <SystemConfiguration/SCNetworkReachability.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    SCNetworkReachabilityFlags flags;
    SCNetworkReachabilityRef url;
    url = SCNetworkReachabilityCreateWithName(NULL, "my.cerner.com" );
    Boolean success = SCNetworkReachabilityGetFlags(url, &flags);
    CFRelease(url);

    if(success 
        && !(flags & kSCNetworkReachabilityFlagsConnectionRequired) 
        && (flags & kSCNetworkReachabilityFlagsReachable))
    {
        NSLog(@"Cerner intranet available.");
    }
    else
    {
        NSLog(@"No intranet connection today!");
    }

    [pool drain];
    return 0;
}