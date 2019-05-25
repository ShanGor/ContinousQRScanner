//
//  RestRequestTests.swift
//  QRScanner
//
//  Created by Samuel Chan on 2019/5/25.
//  Copyright © 2019 Comfortheart.Tech. All rights reserved.
//

import XCTest

class FileUtilsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        FileUtils.saveStringToFile(name: "hey.txt", text: "hello world")
        FileUtils.clearFiles()
    }

    func testGetDocumentPath() {
        let url = FileUtils.getDocumentPath()
        print(url.absoluteString)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}