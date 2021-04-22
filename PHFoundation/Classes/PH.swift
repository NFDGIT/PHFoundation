//
//  PH.swift
//  TaoKe
//
//  Created by penghui on 2020/8/15.
//  Copyright © 2020 penghui. All rights reserved.
//

import UIKit


public class PH: NSObject {
    
    /// 是否是iPhonex 是否是全屏手机
    public class  var  isIphoneX: Bool {
        get{
            guard #available(iOS 11.0, *) else {
                return false
            }
            return UIApplication.shared.windows[0].safeAreaInsets.bottom == 34
        }
    }
    
    /// 屏幕宽度
    public class  var  screenWidth : CGFloat {
        get{
            return UIScreen.main.bounds.size.width
        }
    }
    /// 屏幕高度
    public class  var  screenHeight : CGFloat {
        get{
            return UIScreen.main.bounds.size.height
        }
    }
    
    /// 状态栏高度
    public class  var  statusHeight : CGFloat {
        get{
            return PH.isIphoneX ? 44 : 20
        }
    }
    /// 导航高度 包含状态栏
    public class var naviHeight : CGFloat {
        get{
            return 44 + PH.statusHeight
        }
    }
    
    /// 底部安全区域高度
    /// - Returns: 高度
    public class var safeSaceHeight : CGFloat {
        get{
            return PH.isIphoneX ? 34 : 0
        }
    }
    /// tabbar高度 包含安全区域
    public class var tabbarHeight : CGFloat {
        get{
            return 40 + PH.safeSaceHeight
        }
    }
    
    // 尺寸的适配
    public class var scale: CGFloat{ get {
        return PH.screenWidth / 375.0;
        }
    }
    
    // 垂直尺寸的适配
    public static func ver(_ ver:CGFloat) -> CGFloat {
        return ver*scale
    }
    
    // 水平尺寸的适配
    public static func hor(_ hor:CGFloat) -> CGFloat {
        return hor*scale
    }
}
