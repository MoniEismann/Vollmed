//
//  Appointment.swift
//  Vollmed
//
//  Created by Igor fe Castro Figueiredo on 01/08/24.
//

import Foundation

struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}
