#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) NSWindow* myWindow ;

@end

@implementation AppDelegate

- (IBAction)showOpenPanel:(id)sender {
    NSOpenPanel *panel = [[NSOpenPanel alloc] init] ;
    [panel beginWithCompletionHandler:^(NSInteger result) {
        for (NSInteger i=5; i>=0; i--) {
            sleep(1) ;
            NSLog(@"Will finish opening something in %ld seconds.", i) ;
        }
    }] ;
}

- (IBAction)showWindow:(id)sender {
    NSWindow* window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0,0,200,200)
                                              styleMask:NSTitledWindowMask
                                                backing:NSBackingStoreBuffered
                                                  defer:NO] ;
    [window center] ;
    [window display] ;
    [window makeKeyAndOrderFront:self] ;
    self.myWindow = window ;
    for (NSInteger i=5; i>=0; i--) {
        sleep(1) ;
        NSLog(@"Will unblock in %ld seconds.", i) ;
    }
}

@end
