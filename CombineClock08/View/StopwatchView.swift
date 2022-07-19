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
                        .fill(Color.black)
                        .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.width)
                    
                    Text("\(viewModel.countFormat)")
                        .font(Font(UIFont.monospacedDigitSystemFont(ofSize: 90, weight: .thin)))
                    //小さい画面サイズの対応
                    //1列になるように
                        .lineLimit(1)
                    //自動で文字が縮小されるように
                        .minimumScaleFactor(0.1)
                    //.font(.footnote)
                        .foregroundColor(Color.white)
                    
                }
                
                ButtonView(viewModel: viewModel)
                    .offset(x: 0, y: -60.0)
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
