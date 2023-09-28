//
//  OnBoardingModel.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 22/09/23.
//

import Foundation
import SwiftUI

public struct OnBoardingModel:  Hashable {
    
    public var id: UUID = UUID()
    public var backgroundColor: Color?
    public var colorActiveControl: Color
    public var centerImage: [ImageInformation]?
    public var downText: [OnboardingText]?
    public var actionsButtons: [ButtonsOnBoarding]?
    
    public init(backgroundColor: Color? = nil, colorActiveControl: Color = .blue, centerImage: [ImageInformation]? = nil, downText: [OnboardingText]? = nil, actionsButtons: [ButtonsOnBoarding]? = nil) {
        self.backgroundColor = backgroundColor
        self.colorActiveControl = colorActiveControl
        self.centerImage = centerImage
        self.downText = downText
        self.actionsButtons = actionsButtons
    }
    public static func == (lhs: OnBoardingModel, rhs: OnBoardingModel) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public struct ImageInformation: Hashable {
    
    public var id: UUID = UUID()
    public var image: String
    public var width: CGFloat
    public var height: CGFloat
    public var alignment: Alignment
    
    public init(image: String, width: CGFloat, height: CGFloat, alignment: Alignment = .center) {
        self.image = image
        self.width = width
        self.height = height
        self.alignment = alignment
    }
    
    public static func == (lhs: ImageInformation, rhs: ImageInformation) -> Bool {
        lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public struct OnboardingText: Hashable {
    
    public var id: UUID = UUID()
    public var text: String?
    public var font: Font?
    public var foregroundColor: Color? = .blue
    public var alignText: Alignment?
    
    public init(text: String? = nil, font: Font? = nil, foregroundColor: Color? = nil, alignText: Alignment? = nil) {
        self.text = text
        self.font = font
        self.foregroundColor = foregroundColor
        self.alignText = alignText
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public struct ButtonsOnBoarding:  Hashable {
    
    public var id: UUID = UUID()
    public var text: OnboardingText?
    public var backgroundColor: Color?
    public var cornerRadius: CGFloat?
    public var icon: Image?
    public var iconTint: Color?
    public var position: PositionButton?
    public var location: ButtonLocation
    public var buttonType: ButtonType?
    public var action: (() -> ())?
    
    public init(text: OnboardingText? = nil, backgroundColor: Color? = nil, cornerRadius: CGFloat? = nil, icon: Image? = nil, iconTint: Color? = nil, position: PositionButton? = nil, location: ButtonLocation, buttonType: ButtonType? = nil, action: (() -> ())? = nil) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.icon = icon
        self.iconTint = iconTint
        self.position = position
        self.location = location
        self.buttonType = buttonType
        self.action = action
        
    }
    public static func == (lhs: ButtonsOnBoarding, rhs: ButtonsOnBoarding) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public enum ButtonType {
    case nextPage
    case previousPage
    case skip
    case action
}

public enum PositionButton {
    case first
    case second
    case center
}

public enum ButtonLocation {
    case top
    case inferior
    case tabView
}
