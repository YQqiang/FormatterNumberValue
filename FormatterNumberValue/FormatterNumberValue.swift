//
//  FormatterNumberValue.swift
//  FormatterNumberValue
//
//  Created by sungrow on 2018/3/29.
//  Copyright © 2018年 sungrow. All rights reserved.
//

import Foundation

extension String {
    func formatterNumberValue() -> String {
        // 1. 校验是否是数字类型
        guard Double(self) != nil else {
            return self
        }
        // 2. 转换为大数字
        let decimalNum = NSDecimalNumber(string: self)
        // 3. 校验大数字是否合法
        if decimalNum == NSDecimalNumber.notANumber {
            return self
        }
        // 4. 设置格式化规则
        let numFmt = NumberFormatter()
        numFmt.decimalSeparator = "."
        numFmt.groupingSeparator = ","
        numFmt.maximumFractionDigits = 3
        numFmt.minimumFractionDigits = 0
        numFmt.numberStyle = .decimal
        return numFmt.string(from: decimalNum) ?? ""
    }
}
