//
//  Environment.swift
//  
//
//  Created by Laurin Brandner on 02.01.21.
//

import SwiftUI

public typealias Push = (AnyView, Any?) -> ()
public struct PushKey: EnvironmentKey {
    
    public static let defaultValue: Push = { _, _ in }
    
}

public struct CurrentViewKey: EnvironmentKey {
    
    public static let defaultValue: AnyView? = nil
    
}

public struct ModalViewKey: EnvironmentKey {

    public static let defaultValue: ModalView? = nil
    
}

public extension EnvironmentValues {
    
    var push: Push {
        get { self[PushKey.self] }
        set { self[PushKey.self] = newValue }
    }
    
    var currentView: AnyView? {
        get { self[CurrentViewKey.self] }
        set { self[CurrentViewKey.self] = newValue }
    }
    
    var modalView: ModalView? {
        get { self[ModalViewKey.self] }
        set { self[ModalViewKey.self] = newValue }
    }
    
}
