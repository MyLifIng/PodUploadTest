//
//  FantasticView.swift
//  FantasticView
//
//  Created by Apple_Hao on 2019/4/28.
//  Copyright © 2019年 Apple_Hao. All rights reserved.
//

import UIKit

public class FantasticView: UIView {
    
    let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        // 核心部分
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter += 1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // 你不需要实现这部分
    }
}
