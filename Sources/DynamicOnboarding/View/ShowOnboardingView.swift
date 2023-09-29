//
//  SwiftUIView.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import SwiftUI


public struct ShowOnboardingView: View {
    @StateObject public var information: InformationOnboarding = InformationOnboarding(arrayView: MockInformation.arrayView)
    public init(information: StateObject<InformationOnboarding>) {
        self._information = information
    }
    public var body: some View {
        ZStack {
            Color.white.opacity(0.0001)
            TabView(selection: $information.selection) {
                ForEach(information.arrayView, id: \.modelView.id) { view in
                    view.ignoresSafeArea()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .environmentObject(information)
                        .tag(view.tag)
                }
            }.ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            VStack {
                Spacer()
                PageControl().environmentObject(information)
                ButtonsOnboardingView(locationView: .tabView).environmentObject(information)
            }.padding(.init(top: 0, leading: 15, bottom: 25, trailing: 15))
        }.ignoresSafeArea()
    }
}

struct ShowOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowOnboardingView(information: StateObject(wrappedValue: InformationOnboarding(arrayView: MockInformation.arrayView))).environmentObject(InformationOnboarding(arrayView: MockInformation.arrayView))
    }
}
