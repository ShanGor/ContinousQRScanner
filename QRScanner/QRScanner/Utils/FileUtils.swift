//
//  FileUtils.swift
//  QRScanner
//
//  Created by Samuel Chan on 2019/5/25.
//  Copyright © 2019 Comfortheart.Tech. All rights reserved.
//

import Foundation

class FileUtils {
    public static func saveStringToFile(name: String, text: String) {
        let manager = FileManager.default
        let dir = getDocumentPath()
        let baseDir = dir.appendingPathComponent("qrcode")
        if (manager.fileExists(atPath: baseDir.absoluteString)) {
            print("Directory exists")
        } else {
            try! manager.createDirectory(at: baseDir, withIntermediateDirectories: true)
        }
        let file = baseDir.appendingPathComponent(name)

        try! text.write(to: file, atomically: false, encoding: .utf8)
    }

    public static func clearFiles() {
        let manager = FileManager.default
        let dir = getDocumentPath()
        let baseDir = dir.appendingPathComponent("qrcode")
        if (manager.fileExists(atPath: baseDir.absoluteString)) {
            let filePaths = try! manager.contentsOfDirectory(at: baseDir, includingPropertiesForKeys: nil)
            for filePath in filePaths {
                try! manager.removeItem(at: filePath)
            }
        }
    }

    /*
     * The NSSearchPathForDirectoriesInDomains can get the fixed path name every time.
     * While fileManager.urls(for: .documentDirectory, in: .userDomainMask) return different.
     */
    public static func getDocumentPath() -> URL {
        let dirStr = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        return URL.init(fileURLWithPath: dirStr)
    }
}
