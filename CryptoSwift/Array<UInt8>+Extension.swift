//
//  ArrayUInt8+CryptoSwift.swift
//  CryptoSwift
//
//  Created by Marcin Krzyzanowski on 27/09/15.
//  Copyright © 2015 Marcin Krzyzanowski. All rights reserved.
//

extension Array where Element: _UInt8Type {
    
    public func toHexString() -> String {
        var s:String = ""
        for byte in self {
            s = s + String(format:"%02x", byte as! UInt8)
        }
        return s
    }
    
    public func md5() -> [UInt8]? {
        return Hash.md5(Element.arrayValue(self)).calculate()
    }
    
    public func sha1() -> [UInt8]? {
        return Hash.sha1(Element.arrayValue(self)).calculate()
    }

    public func sha224() -> [UInt8]? {
        return Hash.sha224(Element.arrayValue(self)).calculate()
    }

    public func sha256() -> [UInt8]? {
        return Hash.sha256(Element.arrayValue(self)).calculate()
    }

    public func sha384() -> [UInt8]? {
        return Hash.sha384(Element.arrayValue(self)).calculate()
    }

    public func sha512() -> [UInt8]? {
        return Hash.sha512(Element.arrayValue(self)).calculate()
    }
    
    public func crc32() -> [UInt8]? {
        return Hash.crc32(Element.arrayValue(self)).calculate()
    }

}