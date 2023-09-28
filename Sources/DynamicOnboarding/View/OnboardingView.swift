//
//  OnboardingView.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 22/09/23.
//

import SwiftUI

public struct OnboardingView: View {
    
    public var modelView: OnBoardingModel
    public var tag: Int
    @EnvironmentObject public var information: InformationOnboarding
    
    public init(modelView: OnBoardingModel, tag: Int) {
        self.modelView = modelView
        self.tag = tag
    }
    public var body: some View {
        ZStack {
            modelView.backgroundColor
            
            VStack(alignment: .trailing){
                ButtonsOnboardingView(locationView: .top)
                    .frame(alignment: .trailing)
                    .padding(.top, UIScreen.main.bounds.height * 0.03)
                    .padding(.trailing, 16)
                
                VStack {
                    Spacer()
                    showImages()
                    Spacer()
                    showTexts()
                    ButtonsOnboardingView(locationView: .inferior).frame(height: 30, alignment: .center).padding()
                    Spacer()
                }.padding(.bottom, 54)
            }.padding()
        }.ignoresSafeArea()
    }
}

public extension OnboardingView {
    
    @ViewBuilder
    func showImages() -> some View {
        VStack {
            ForEach(modelView.centerImage ?? [], id: \.self) { image in
                Image(image.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * image.width, height: UIScreen.main.bounds.width * image.height, alignment: image.alignment)
            }
        }
    }
    
    @ViewBuilder
    func showTexts() -> some View {
        ForEach(modelView.downText ?? [], id: \.self) {
            text in
            Text(text.text ?? "")
                .padding(.init(top: 3, leading: 24, bottom: 0, trailing: 24))
                .foregroundColor(text.foregroundColor)
                .font(text.font)
                .multilineTextAlignment(.center)
                .frame(alignment: text.alignText ?? .center)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        MockInformation.arrayView[0].environmentObject(InformationOnboarding(arrayView:  MockInformation.arrayView))
    }
}
