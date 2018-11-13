# IpsLocation-iOS

IpsLocation-iOS 是一套基于 iOS 8.0 及以上版本的室内地图应用程序开发接口，供开发者在自己的iOS应用中加入室内定位功能。

## 获取AppKey
请给dev@ipsmap.com邮件联系获取AppKey、mapId、

## 使用CocoaPods部署
在Podfile中使用命令如下：
```bash
pod 'IpsLocation', '~> 1.0.2'
```
然后运行以下命令

```bash
$ pod install
```
### 注意
导入IpsmapLocation后需要
- Build Settings中将Enable Bitcode 默认为YES无需修改成NO（IpsmapSDK为了兼容科大许飞SDK才使用NO）。
- 在Info.plist中添加授权申明
```bash
	<key>NSBluetoothPeripheralUsageDescription</key>
	<string>App需要您的同意,才能访问蓝牙</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>App需要您的同意,才能在使用期间访问位置 </string>
  ```
  
## 使用说明  
### 是否在地图范围内的接口
```objective-c
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.manger = [IpsmapLocationManger new];
    self.manger.locationTimeOut = 20;
    self.manger.delegate = self;
    
    [self.manger startLocationEngine:@"lGaWCUtqoj"];
}

- (void)ipsmapLocationManager:(IpsmapLocationManger *_Nullable)manager didUpdateLocation:(IpsLocation *_Nullable)location 
{
    if (location.inThisMap) {
        NSLog(@"在医院里面");
    }
}
```
