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
                .foregroundColor(Color.orange)
        }
    }
}

struct SelectStopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        SelectStopwatchView()
    }
}

