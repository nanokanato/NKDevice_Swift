//
//  AppDelegate.swift
//  NKDevice
//
//  Created by nanoka____ on 2014/09/30.
//  Copyright (c) 2014年 nanoka____. All rights reserved.
//

/*--------------------------------------------------------------------
; import : FrameworkやObjective-cを読み込む場合に使用
---------------------------------------------------------------------*/
import UIKit

@UIApplicationMain//Objective-cのmain.mを省略したもの
/*=====================================================================
; AppDelegate : 起動時に呼び出されるクラス
======================================================================*/
class AppDelegate : UIResponder, UIApplicationDelegate{
    
    var window:UIWindow? //?はnilを許容するかどうかを明示的に指定する
    
    /*-----------------------------------------------------------------
    ; didFinishLaunchingWithOptions : アプリを起動した際に呼び出される
    ;                            in : application(UIApplication)
    ;                               : launchOptions(NSDictionary?)
    ;                           out : Bool
    ------------------------------------------------------------------*/
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        //ウィンドウの生成
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        //ウィンドウの背景色を白にする
        self.window!.backgroundColor = UIColor.whiteColor()
        //ルートビューコントローラーの作成
        let viewController = ViewController();
        //ルートビューコントローラーの指定
        self.window!.rootViewController = viewController;
        //Windowの表示
        self.window?.makeKeyAndVisible()
        return true
    }
}