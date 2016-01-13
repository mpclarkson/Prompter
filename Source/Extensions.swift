//
//  Extensions.swift
//  swift-cli
//
//  Created by Matthew on 11/01/2016.
//  Copyright © 2016 Matthew Clarkson. All rights reserved.
//

extension String {

    var bool: Bool? {

        switch self.lowercaseString {
        case "true", "t", "y", "yes", "1":
            return true
        case  "false", "f", "n", "no", "0":
            return false
        default:
            return nil
        }
    }

    var int: Int? {
        return Int(self)
    }
}

extension Array {

    func getAtIndex(index: Int?) -> Element? {
        guard let index = index where index >= 0 else { return nil }
        return index <= self.count - 1 ? self[index] : nil
    }
}
