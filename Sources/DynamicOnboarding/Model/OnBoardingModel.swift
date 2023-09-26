//
//  OnBoardingModel.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 22/09/23.
//

import Foundation
import SwiftUI

public struct OnBoardingModel: Identifiable, Hashable {
    
    public var id: UUID = UUID()
    public var backgroundColor: Color?
    public var colorActiveControl: Color
    public var topView: AnyView?
    public var centerImage: [ImageInformation]?
    public var downText: [OnboardingText]?
    public var inferiorView: AnyView?
    public var actionsButtons: [ButtonsOnBoarding]?
    public var lottieView: AnyView?
    
    public init(backgroundColor: Color? = nil, colorActiveControl: Color = .blue, topView: AnyView?, centerImage: [ImageInformation]? = nil, downText: [OnboardingText]? = nil, inferiorView: AnyView? = nil, actionsButtons: [ButtonsOnBoarding]? = nil, lottieView: AnyView? = nil) {
        self.backgroundColor = backgroundColor
        self.colorActiveControl = colorActiveControl
        self.topView = topView
        self.centerImage = centerImage
        self.downText = downText
        self.inferiorView = inferiorView
        self.actionsButtons = actionsButtons
        self.lottieView = lottieView
    }
    public static func == (lhs: OnBoardingModel, rhs: OnBoardingModel) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

public struct ImageInformation: Identifiable, Hashable {
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

public struct OnboardingText: Identifiable, Hashable {
    public var id: UUID = UUID()
    public var text: String? = ""
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

public struct ButtonsOnBoarding: Identifiable, Hashable {
    
    
    public var id: UUID = UUID()
    public var text: OnboardingText?
    public var backgroundColor: Color?
    public var icon: Image?
    public var iconTint: Color?
    public var position: PositionButton?
    public var buttonType: ButtonType?
    public var action: ()?
    
    public init(text: OnboardingText? = nil, backgroundColor: Color? = nil, icon: Image? = nil, iconTint: Color? = nil, position: PositionButton? = nil, buttonType: ButtonType? = nil, action: ()? = nil) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.icon = icon
        self.iconTint = iconTint
        self.position = position
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
}
public enum PositionButton {
    case first
    case second
}
