// The test
//#import <open3d/Open3D.h>
#import "Open3DWrapper.h"

#ifdef __cplusplus
#undef NO
#undef YES
#import <open3d/Open3D.h>
#endif

#include <open3d/Open3DConfig.h>
// #import <opencv2/imgcodecs/ios.h>

#import <UIKit/UIKit.h>

@implementation Open3DWrapper

using namespace open3d;
using namespace std;

+ (NSString *)open3DVersionString {
    return [NSString stringWithFormat:@"Open3D Version %s",  OPEN3D_VERSION];
}
