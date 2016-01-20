//
//  SIMChatBaseCell+Unknow.swift
//  SIMChat
//
//  Created by sagesse on 1/20/16.
//  Copyright © 2016 Sagesse. All rights reserved.
//

import UIKit

extension SIMChatBaseCell {
    ///
    /// 未知的信息
    ///
    public class Unknow: Base {
        public required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
        public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            // config
            titleLabel.text = "未知的消息类型"
            titleLabel.numberOfLines = 0
            titleLabel.font = UIFont.systemFontOfSize(11)
            titleLabel.textColor = UIColor(hex: 0x7B7B7B)
            titleLabel.textAlignment = NSTextAlignment.Center
            // add views
            contentView.addSubview(titleLabel)
            // add constraints
            SIMChatLayout.make(titleLabel)
                .top.equ(contentView).top(16)
                .left.equ(contentView).left(8)
                .right.equ(contentView).right(8)
                .bottom.equ(contentView).bottom(8)
                .submit()
        }
        private lazy var titleLabel = UILabel()
    }
}

