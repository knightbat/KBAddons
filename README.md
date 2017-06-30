# XMAddons

## XMActivtyIndicator

## Installation
### Manual
Drag and drop XMActivityIndicator.h and XMActivityIndicator.m files into your project

### Cocoapods
Add this to your podfile :
```bash
pod 'XMAddons'
```
## Usage
Import XMActivityIndicator.h in your viewcontroller

* **Creating ActivityIndicatorView :**
```bash
self.activityIndictor = [[XMActivityIndicator alloc]init];
```
* **Configuration :**
```bash
self.activityIndictor.activityCornerRadius = self.activityIndictor.frame.size.width/2;
self.activityIndictor.activityStyle = UIActivityIndicatorViewStyleWhiteLarge
self.activityIndictor.activityColor = [UIColor redColor];
```
**For Large activity indicator :**
```bash
self.activityIndictor.activityType = BRSACTIVITYLARGE; 
```
**For Small activity indicator :**
```bash
self.activityIndictor.activityType = BRSACTIVITYSMALL;
self.activityIndictor.activityIndicatorSize = @300;
```

