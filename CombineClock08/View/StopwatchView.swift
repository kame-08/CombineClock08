//
//  StopwatchView.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import SwiftUI

struct StopwatchView: View {
    
    @StateObject private var viewModel = StopwatchViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ZStack{
                    Circle()
                        .padding(.horizontal)
                    
                    Text("\(viewModel.countFormat)")
                        .font(Font(UIFont.monospacedDigitSystemFont(ofSize: 90, weight: .thin)))
                    //.font(.footnote)
                        .foregroundColor(Color.white)
                    
                }
                
                ButtonView(viewModel: viewModel)
                    .offset(x: 0, y: -60)
                    .padding(.bottom, -60.0)
                
                Spacer()
            }
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
