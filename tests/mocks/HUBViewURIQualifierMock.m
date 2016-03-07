#import "HUBViewURIQualifierMock.h"

NS_ASSUME_NONNULL_BEGIN

@interface HUBViewURIQualifierMock ()

@property (nonatomic, strong, readonly) NSSet<NSURL *> *disqualifiedViewURIs;

@end

@implementation HUBViewURIQualifierMock

- (instancetype)initWithDisqualifiedViewURIs:(NSArray<NSURL *> *)disqualifiedViewURIs
{
    self = [super init];
    
    if (self) {
        _disqualifiedViewURIs = [NSSet setWithArray:disqualifiedViewURIs];
    }
    
    return self;
}

#pragma mark - HUBViewURIQualifier

- (BOOL)qualifyViewURI:(NSURL *)viewURI
{
    return ![self.disqualifiedViewURIs containsObject:viewURI];
}

@end

NS_ASSUME_NONNULL_END
