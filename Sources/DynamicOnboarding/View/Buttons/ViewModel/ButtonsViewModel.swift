//
//  ButtonsViewModel.swift
//  
//
//  Created by Danilo Hernandez on 28/09/23.
//

import Foundation


public class  ButtonsViewModel: ObservableObject {
    
    public func actionTabView(button: ButtonsOnBoarding, information: InformationOnboarding) -> () {
        if let action = button.action {
            action()
        } else {
            switch  button.buttonType {
                case .nextPage:
                    if information.selection < information.arrayView.count - 1 {
                        information.selection += 1
                    }
                case .previousPage:
                    if information.selection >= 1 {
                        information.selection -= 1
                    }
                case .skip:
                    return information.selection = information.arrayView.count - 1
                default:
                    break
            }
        }
    }
}
