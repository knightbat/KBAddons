# XMAddons

## XMActivtyIndicator

## Installation
### Manual
Drag and drop All the files in [XMAddons](https://github.com/bindurs/XMAddons/tree/master/XMAddons) to your project

### Cocoapods
Add this to your podfile :
```bash
pod 'XMAddons'
```
## Usage
Import XMActivityIndicator.h in your viewcontroller

### Creating ActivityIndicatorView :
```objective-c
self.activityIndictor = [[XMActivityIndicator alloc]init];
```
### Configuration :
```objective-c
self.activityIndictor.activityCornerRadius = self.activityIndictor.frame.size.width/2;
self.activityIndictor.activityStyle = UIActivityIndicatorViewStyleWhiteLarge
self.activityIndictor.activityColor = [UIColor redColor];
```
* **For Large activity indicator :**
```objective-c
self.activityIndictor.activityType = BRSACTIVITYLARGE; 
```
* **For Small activity indicator :**
```objective-c
self.activityIndictor.activityType = BRSACTIVITYSMALL;
self.activityIndictor.activityIndicatorSize = @300;
```

