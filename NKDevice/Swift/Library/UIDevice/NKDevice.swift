//
//  NKDevice.swift
//  NKDevice
//
//  Created by nanoka____ on 2014/09/30.
//  Copyright (c) 2014年 nanoka____. All rights reserved.
//

/*--------------------------------------------------------------------
; import : FrameworkやObjective-cを読み込む場合に使用
---------------------------------------------------------------------*/
import UIKit

/*=====================================================================
; NKDevice : 端末情報を取得するクラス
======================================================================*/
class NKDevice : NSObject {
    
    //端末情報(端末が増えるごとに追加してください)
    enum DeviceList:Int {
        case iPod5_1
        case iPhone3_1
        case iPhone3_2
        case iPhone3_3
        case iPhone4_1
        case iPhone5_1
        case iPhone5_2
        case iPhone5_3
        case iPhone5_4
        case iPhone6_1
        case iPhone6_2
        case iPhone7_2
        case iPhone7_1
        case iPad2_1
        case iPad2_2
        case iPad2_3
        case iPad2_4
        case iPad3_1
        case iPad3_2
        case iPad3_3
        case iPad3_4
        case iPad3_5
        case iPad3_6
        case iPad4_1
        case iPad4_2
        case iPad4_3
        case iPad5_1
        case iPad5_3
        case iPad5_4
        case iPad2_5
        case iPad2_6
        case iPad2_7
        case iPad4_4
        case iPad4_5
        case iPad4_6
        case iPad4_7
        case iPad4_8
        case iPad4_9
        case x86_64
        case i386
        
        //プラットフォーム名
        func platform() -> String {
            switch(self) {
            case .iPod5_1:
                return "iPod5,1"
            case .iPhone3_1:
                return "iPhone3,1"
            case .iPhone3_2:
                return "iPhone3,2"
            case .iPhone3_3:
                return "iPhone3,3"
            case .iPhone4_1:
                return "iPhone4,1"
            case .iPhone5_1:
                return "iPhone5,1"
            case .iPhone5_2:
                return "iPhone5,2"
            case .iPhone5_3:
                return "iPhone5,3"
            case .iPhone5_4:
                return "iPhone5,4"
            case .iPhone6_1:
                return "iPhone6,1"
            case .iPhone6_2:
                return "iPhone6,2"
            case .iPhone7_2:
                return "iPhone7,2"
            case .iPhone7_1:
                return "iPhone7,1"
            case .iPad2_1:
                return "iPad2,1"
            case .iPad2_2:
                return "iPad2,2"
            case .iPad2_3:
                return "iPad2,3"
            case .iPad2_4:
                return "iPad2,4"
            case .iPad3_1:
                return "iPad3,1"
            case .iPad3_2:
                return "iPad3,2"
            case .iPad3_3:
                return "iPad3,3"
            case .iPad3_4:
                return "iPad3,4"
            case .iPad3_5:
                return "iPad3,5"
            case .iPad3_6:
                return "iPad3,6"
            case .iPad4_1:
                return "iPad4,1"
            case .iPad4_2:
                return "iPad4,2"
            case .iPad4_3:
                return "iPad4,3"
            case .iPad5_1:
                return "iPad5,1"
            case .iPad5_3:
                return "iPad5,3"
            case .iPad5_4:
                return "iPad5,4"
            case .iPad2_5:
                return "iPad2,5"
            case .iPad2_6:
                return "iPad2,6"
            case .iPad2_7:
                return "iPad2,7"
            case .iPad4_4:
                return "iPad4,4"
            case .iPad4_5:
                return "iPad4,5"
            case .iPad4_6:
                return "iPad4,6"
            case .iPad4_7:
                return "iPad4,7"
            case .iPad4_8:
                return "iPad4,8"
            case .iPad4_9:
                return "iPad4,9"
            case .x86_64:
                return "x86_64"
            case .i386:
                return "i386"
            }
        }
        
        //モデル名
        func model() -> String {
            switch(self) {
            case .iPod5_1:
                return "iPodTouch"
            case .iPhone3_1:
                return "iPhone4"
            case .iPhone3_2:
                return "iPhone4"
            case .iPhone3_3:
                return "iPhone4"
            case .iPhone4_1:
                return "iPhone4s"
            case .iPhone5_1:
                return "iPhone5"
            case .iPhone5_2:
                return "iPhone5"
            case .iPhone5_3:
                return "iPhone5c"
            case .iPhone5_4:
                return "iPhone5c"
            case .iPhone6_1:
                return "iPhone5s"
            case .iPhone6_2:
                return "iPhone5s"
            case .iPhone7_2:
                return "iPhone6"
            case .iPhone7_1:
                return "iPhone6Plus"
            case .iPad2_1:
                return "iPad2"
            case .iPad2_2:
                return "iPad2"
            case .iPad2_3:
                return "iPad2"
            case .iPad2_4:
                return "iPad2"
            case .iPad3_1:
                return "iPad3"
            case .iPad3_2:
                return "iPad3"
            case .iPad3_3:
                return "iPad3"
            case .iPad3_4:
                return "iPad4"
            case .iPad3_5:
                return "iPad4"
            case .iPad3_6:
                return "iPad4"
            case .iPad4_1:
                return "iPadAir"
            case .iPad4_2:
                return "iPadAir"
            case .iPad4_3:
                return "iPadAir"
            case .iPad5_1:
                return "iPadAir2"
            case .iPad5_3:
                return "iPadAir2"
            case .iPad5_4:
                return "iPadAir2"
            case .iPad2_5:
                return "iPadMini"
            case .iPad2_6:
                return "iPadMini"
            case .iPad2_7:
                return "iPadMini"
            case .iPad4_4:
                return "iPadMini"
            case .iPad4_5:
                return "iPadMini"
            case .iPad4_6:
                return "iPadMini"
            case .iPad4_7:
                return "iPadMini"
            case .iPad4_8:
                return "iPadMini"
            case .iPad4_9:
                return "iPadMini"
            case .x86_64:
                return "Simulator"
            case .i386:
                return "Simulator"
            }
        }
        
        //enumの要素数
        static var count: Int {
            var i = 1
            while self(rawValue: ++i) != nil {}
            return i
        }
    }
    
    /*-----------------------------------------------------------------
    ; deviceOS : 端末のOSのバージョンのFloat型
    ;       in :
    ;      out : Float
    ------------------------------------------------------------------*/
    var deviceOS:Float {
        var systemVersion:NSString = UIDevice().systemVersion
        var osVersion:Float = systemVersion.floatValue
        return osVersion;
    }
    
    /*-----------------------------------------------------------------
    ; deviceModel : 端末のモデル名称のString
    ;          in :
    ;         out : DeviceList
    ------------------------------------------------------------------*/
    var deviceModel:DeviceList {
        //端末モデルのプラットフォーム名を取得
        var systemInfo = utsname()
        uname(&systemInfo)
        let machine = systemInfo.machine
        let mirror = reflect(machine)
        var identifier = ""
        for i in 0..<mirror.count {
            if let value = mirror[i].1.value as? Int8 where value != 0 {
                identifier.append(UnicodeScalar(UInt8(value)))
            }
        }
        //プラットフォーム名をモデル名称へ変換(変換できなかった場合はプラットフォーム名のまま)
        var device:DeviceList!
        for var i = 0; i < DeviceList.count; i++ {
            //端末情報を取得
            var deviceList:DeviceList = DeviceList(rawValue: i)!
            //端末情報が一致したら返す
            if(deviceList.platform() == identifier){
                device = deviceList
                break
            }
        }
        return device
    }
}
