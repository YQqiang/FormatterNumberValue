//
//  FormatterNumberValueTest.swift
//  FormatterNumberValueTest
//
//  Created by sungrow on 2018/3/29.
//  Copyright © 2018年 sungrow. All rights reserved.
//

import XCTest

class FormatterNumberValueTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // 测试用例初始化代码, 每个测试用例执行前都会执行
    }
    
    override func tearDown() {
        // 使用资源代码, 每个测试用例执行后执行
        super.tearDown()
    }
    
    func testNum1() {
        let testStr = "123.123"
        let targetStr = "123.123"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum2() {
        let testStr = "123"
        let targetStr = "123"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum3() {
        let testStr = "null"
        let targetStr = "null"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum4() {
        let testStr = ""
        let targetStr = ""
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum5() {
        let testStr = "123.989"
        let targetStr = "123.989"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum6() {
        let testStr = "123.9897"
        let targetStr = "123.99"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum7() {
        let testStr = "123.900"
        let targetStr = "123.9"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum8() {
        let testStr = "123.9009"
        let targetStr = "123.901"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum9() {
        let testStr = "123.9001"
        let targetStr = "123.9"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum10() {
        let testStr = "567123.9001"
        let targetStr = "567,123.9"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum11() {
        let testStr = "123456789012345.00"
        let targetStr = "123,456,789,012,345"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum12() {
        let testStr = "123456789012345.01"
        let targetStr = "123,456,789,012,345.01"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum13() {
        let testStr = "23456789012345.019"
        let targetStr = "23,456,789,012,345.019"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum14() {
        let testStr = "23456789012345.0195"
        let targetStr = "23,456,789,012,345.02"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum15() {
        let testStr = "23456789012345.018989"
        let targetStr = "23,456,789,012,345.019"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum16() {
        let testStr = "--"
        let targetStr = "--"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum17() {
        let testStr = "&*((**"
        let targetStr = "&*((**"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum18() {
        let testStr = "-+"
        let targetStr = "-+"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum19() {
        let testStr = "++"
        let targetStr = "++"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum20() {
        let testStr = "0"
        let targetStr = "0"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum21() {
        let testStr = "0000000"
        let targetStr = "0"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum22() {
        let testStr = "-123.98"
        let targetStr = "-123.98"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum23() {
        let testStr = "+123.98"
        let targetStr = "123.98"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
    
    func testNum24() {
        let testStr = "-12-3.98-"
        let targetStr = "-12-3.98-"
        XCTAssert(testStr.formatterNumberValue() == targetStr, "测试通过")
    }
}
