//
//  main.swift
//  CeasarDecryption
//
//  Created by Frank Kearns on 2/5/21.
//

import Foundation

print("This program will decrypt the ceasar encryption in Challenge #1.");

let codes:[String] = ["UCFFNG", "TFBUQPTU", "GVERO", "CNKKR", "GFWXYJR", "FKDLQ"];

for c in codes {
    var curr: String = c;
    print(" -> \(c)");
    for _ in 0...26 {
        var temp: String = "";
        for ch in curr {
            var v: Int = Int(ch.unicodeScalars.map{$0.value}.reduce(0, +)) + 1;
            if v == 91 {
                v = 65;
            }
            temp.append(Character(UnicodeScalar(v)!));
        }
        curr = temp;
        print(" ---> \(curr)");
        if curr.starts(with:"BAR") {
            print("Posible answer: \(curr)");
        }
    }
}

