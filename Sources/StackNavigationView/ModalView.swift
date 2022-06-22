//
//  ModalView.swift
//  Nuage
//
//  Created by Laurin Brandner on 11.01.21.
//

import SwiftUI

public struct ModalView: Equatable {
    
    var item: Binding<Int?>
    var content: AnyView
    
    public static func == (lhs: ModalView, rhs: ModalView) -> Bool { lhs.item.wrappedValue == rhs.item.wrappedValue }
    
}
