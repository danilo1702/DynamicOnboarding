//
//  SwiftUIView.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import SwiftUI

public struct PageControl: View {
    
    @EnvironmentObject public var information : InformationOnboarding
    
    public var body: some View {
        HStack {
            ForEach(0..<information.arrayView.count, id: \.self) { page in
                RoundedRectangle(cornerRadius: 4)
                    .fill(page == information.selection ? information.arrayView[information.selection].modelView.colorActiveControl : Color.gray.opacity(0.5))
                    .frame(width: 24, height: 7.5)
                    .onTapGesture {
                        $information.selection.wrappedValue = page
                    }
            }
        }
        .padding(5)
        .background(.white.opacity(0.001))
    }
}
