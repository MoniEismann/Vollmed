//
//  String+.swift
//  Vollmed
//
//  Created by Igor fe Castro Figueiredo on 31/07/24.
//

import Foundation

extension String {
    func convertDateStringToReadableDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = inputFormatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy 'às' HH:mm"
            return dateFormatter.string(from: date)
        }
        
        return ""
    }
}

