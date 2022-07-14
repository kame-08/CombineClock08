//
//  SelectStopwatchView.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import SwiftUI

struct SelectStopwatchView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Select Stopwatch")
                .font(.title)
                .lineLimit(1)
            //日本語の時に自動で文字が縮小されるように
                .minimumScaleFactor(0.1)
                .foregroundColor(Color.orange)
        }
    }
}

struct SelectStopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        SelectStopwatchView()
    }
}

