//
//  Dic.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/04/16.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

import UIKit

class Dic: NSObject {
    
    var IATA:String?
    var ICAO:String?
    var jpAirPort:String?
    var Airport:String?
    var Country:String?
    
    init(iataCode:String, icaoCode:String, jpName:String, name:String) {
        IATA = iataCode
        ICAO = icaoCode
        jpAirPort = jpName
        Airport = name
    }

}
