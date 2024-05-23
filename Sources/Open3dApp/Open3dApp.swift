// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import LinkOpen3D

open class Swift3D {
    fileprivate let fileName: String

    init(fileName: String) {
        self.fileName = fileName
    }

    // – Increment iterator - return false if over end and do not increment
    func increment() -> ImageWarpingField {
        return CreateImageWarpingFieldFromFile(self.fileName)
    }

  
}