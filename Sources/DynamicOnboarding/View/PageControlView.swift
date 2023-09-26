//
//  SwiftUIView.swift
//  
//
//  Created by Danilo Hernandez on 26/09/23.
//

import SwiftUI

public struct PageControl: View {
    
    @Binding public var currentPage: Int
    public let pageCount: Int
    public let colorControl: Color
    
    public init(currentPage: Binding<Int>, pageCount: Int, colorControl: Color = .blue) {
        self._currentPage = currentPage
        self.pageCount = pageCount
        self.colorControl = colorControl
    }
    public var body: some View {
        HStack {
            ForEach(0..<pageCount, id: \.self) { page in
                RoundedRectangle(cornerRadius: 4)
                    .fill(page == currentPage ? colorControl : Color.gray.opacity(0.5))
                    .frame(width: 24, height: 7.5)
                    .onTapGesture {
                        currentPage = page
                    }
            }
        }
        
    }
}
