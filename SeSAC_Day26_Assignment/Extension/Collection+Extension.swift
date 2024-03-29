//
//  Collection+Extension.swift
//  SeSAC_Day26_Assignment
//
//  Created by 쩡화니 on 2/1/24.
//

import Foundation

extension Collection {
  subscript(safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
