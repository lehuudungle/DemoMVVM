//
//  SupportCode.swift
//  ReviewSwift
//
//  Created by Ledung95d on 9/25/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation

public func example(of description: String, action: () -> Void) {
    print("\n --- Example of: ",description, "----")
    action()
}
