//
//  File.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import Foundation

public class InformationOnboarding: ObservableObject {
    @Published public var selection: Int = 0
    
    public var arrayView: [OnboardingView]
    public init(selection: Int = 0, arrayView: [OnboardingView]) {
        self.selection = selection
        self.arrayView = arrayView
    }
}
