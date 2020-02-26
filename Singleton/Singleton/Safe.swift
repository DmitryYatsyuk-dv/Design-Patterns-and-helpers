//
//  Safe.swift
//  Singleton
//
//  Created by Lucky on 26/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//


class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {}
}

