//
//  Distance.swift
//  UnitConverter
//
//  Created by Ahmed Nabil on 12/22/21.
//

import Foundation
struct Distance {
    static let kmPerMile = 1.60934
    var miles: Double
    var km: Double {
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm){
            miles = Distance.toMiles(km: newKm)
        }
    }
    init (miles: Double) {
        self.miles = miles
        
    }
    init (km: Double) {
        self.miles = Distance.toMiles(km: km)
        
    }
    
    static func toKm(miles: Double) -> Double {
        return miles * Distance.kmPerMile
    }
    static func toMiles(km: Double) -> Double {
        return km / Distance.kmPerMile
    }
}
