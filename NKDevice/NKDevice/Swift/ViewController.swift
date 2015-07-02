//
//  ViewController.swift
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
; ViewController
======================================================================*/
class ViewController : UIViewController {
    
    /*-----------------------------------------------------------------
    ; viewDidLoad : 初回Viewの読み込み時に呼び出される
    ;          in :
    ;         out :
    ------------------------------------------------------------------*/
    override func viewDidLoad()
    {
        //背景を白色にする
        self.view.backgroundColor = UIColor.whiteColor()
        //OSフラグ
        var deviceOS:Float = NKDevice().deviceOS
        //端末モデル名取得
        var deviceModel:String = NKDevice().deviceModel.model()
        
        //モデル名を比較して判別
        if(deviceModel == "iPhone4" || deviceModel == "iPhone4s"){
            //4s系サイズ
        }else if(deviceModel == "iPodTouch" || deviceModel == "iPhone5" || deviceModel == "iPhone5c" || deviceModel == "iPhone5s"){
            //5系サイズ
        }else if(deviceModel == "iPhone6"){
            //6系サイズ
        }else if(deviceModel == "iPhone6Plus"){
            //6Plus系サイズ
        }else{
            //その他(iPad,Simulator)
        }
        NSLog("%@(%.1f)",deviceModel,deviceOS);
    }
}
