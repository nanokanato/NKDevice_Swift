NKDevice
=============
http://nanoka.wpcloud.net  

機能
-----
Swiftで端末情報を取得する  
まだ改善の余地はあると思いますが端末の判別などが簡単にできるよう作りました  
  
○取得できるもの
・端末OSをFloat型で取得(8.0など)  
・プラットフォーム名を取得(iPhone7,2など)  
・端末モデル名を取得(iPhone6など)  
  
使用方法
-----
・OSの取得(Float型)  
```
var deviceOS:Float = NKDevice().deviceOS
```
  
・プラットフォームの取得(String型)  
enum型のDeviceListを取得
```
var deviceList:DeviceList = NKDevice().deviceModel
```
DeviceListからプラットフォームを取得
```
var platform:String = deviceList.platform()
```
  
・端末モデル名を取得(String型)  
enum型のDeviceListを取得
```
var deviceList:DeviceList = NKDevice().deviceModel
```
DeviceListから端末モデル名を取得
```
var model:String = deviceList.model()
```