//
//  YSC_SpineJSON.swift
//  YSC_SKSpine_New
//
//  Created by 최윤석 on 2015. 11. 5..
//  Copyright © 2015년 Yoonsuk Choi. All rights reserved.
//

import Foundation

class YSC_SpineJSONTools {
    func readJSONFile(name:String) -> JSON {
        
        let path = Bundle.main.path(forResource: name, ofType: "json")
        var jsonData = NSData()
        do {
            jsonData = try NSData(contentsOfFile: path!, options: .uncached)
        } catch let error as NSError {
            print(error.domain)
        }
        
        let jsonResult = try! JSON(data: jsonData as Data)
        
        return jsonResult
        
    }
}
