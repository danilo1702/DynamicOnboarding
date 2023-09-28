//
//  SwiftUIView.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import SwiftUI

public struct ButtonsOnboardingView: View {
    
    @EnvironmentObject public var information: InformationOnboarding
    @StateObject public var viewModel: ButtonsViewModel = ButtonsViewModel()
    @State var range: Range<Int> = 0..<0
    var locationView: ButtonLocation
    public init(locationView: ButtonLocation) {
        self.locationView = locationView
    }
    public var body: some View {
        
        HStack {
            if range.contains(information.selection){
                if let buttons = information.arrayView[information.selection].modelView.actionsButtons {
                    
                    ForEach(buttons, id:\.id) { button in
                        if locationView == button.location{
                            if button.position == .second || button.position == .center {
                                Spacer()
                            }
                            Button {
                                if range.contains(information.selection){
                                    viewModel.actionTabView(button: button, information: information)
                                }
                            } label: {
                                Text(button.text?.text ?? "")
                                    .frame(alignment: button.text?.alignText ?? .center)
                                    .foregroundColor(button.text?.foregroundColor)
                                    .font(button.text?.font)
                                if let icon = button.icon {
                                    icon.resizable()
                                        .frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.width * 0.1)
                                        .foregroundColor(button.iconTint)
                                }
                            }
                            .padding()
                            .background(button.backgroundColor)
                            .cornerRadius(button.cornerRadius ?? 0)
                            if button.position == .first || button.position == .center {
                                Spacer()
                            }
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width,height: 33, alignment: .trailing)
            .onAppear{
                range = 0..<information.arrayView.count
            }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsOnboardingView(locationView: .top).environmentObject(InformationOnboarding(arrayView:  MockInformation.arrayView))
    }
}
