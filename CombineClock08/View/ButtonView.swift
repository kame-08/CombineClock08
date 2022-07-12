//
//  ButtonView.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject private var viewModel: StopwatchViewModel
    
    init(viewModel: StopwatchViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack{
            
            Button {
                if(viewModel.isStart){
                    //Lap
                }else{
                    //リセット
                    viewModel.resetCount()
                }
            } label: {
                Text(viewModel.isStart ? "Lap" : "Reset")
                    .foregroundColor(Color.white)
                    .frame(width: 80.0, height: 80.0)
                    .background(Color.gray)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button {
                if(viewModel.isStart){
                    viewModel.stopCounting()
                    viewModel.isStart = false
                }else{
                    viewModel.startCounting()
                    viewModel.isStart = true
                }
            } label: {
                Text(viewModel.isStart ? "Stop" : "Start" )
                    .foregroundColor(viewModel.isStart ? Color.white : Color.white )
                    .frame(width: 80.0, height: 80.0)
                    .background(viewModel.isStart ? Color.red : Color.green )
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(viewModel: StopwatchViewModel())
    }
}

