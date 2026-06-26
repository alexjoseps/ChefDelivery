//
//  Double+.swift
//  ChefDelivery
//
//  Created by Alex Souza on 25/06/26.
//

import Foundation

extension Double {
    func toBRL() -> String {
        return String(format: "R$ %.2f", self).replacingOccurrences(of: ".", with: ",")
    }
}
