//
//  SwiftUIView.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import SwiftUI

public struct ButtonsOnboardingView: View {
    @EnvironmentObject public var information: InformationOnboarding
    public var body: some View {
        HStack {
            if let buttons = information.arrayView[information.selection].modelView.actionsButtons {
                ForEach(buttons) { button in
                    if button.position == .second {
                        Spacer()
                    }
                    Button {
                        switch button.buttonType {
                            case .nextPage:
                                return information.selection += 1
                            case .previousPage:
                                return information.selection -= 1
                            default:
                                break
                        }
                    } label: {
                        Text(button.text?.text ?? "")
                            .frame(alignment: button.text?.alignText ?? .center)
                            .foregroundColor(button.text?.foregroundColor)
                            .font(button.text?.font)
                        if let icon = button.icon {
                            icon.resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(button.iconTint)
                        }
                    }.padding()
                        .background(button.backgroundColor)
                    if button.position == .first {
                        Spacer()
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width,height: 33, alignment: .trailing)
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsOnboardingView().environmentObject(InformationOnboarding(arrayView:  MockInformation.arrayView))
    }
}
