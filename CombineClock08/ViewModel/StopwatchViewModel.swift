//
//  StopwatchViewModel.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import Foundation
import Combine

final class StopwatchViewModel: ObservableObject {
    @Published var count = 0.0
    @Published var countFormat = "00:00.00"
    @Published var isTimerRunning = false
    
    //Startしているかどうか
    @Published var isStart = false
    
    private var cancellable: AnyCancellable?
    
    func startCounting() {
        isTimerRunning = true
        cancellable = Timer.publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.count += 0.1
                self.Format(count: self.count)
            }
    }
    
    func stopCounting() {
        isTimerRunning = false
        cancellable?.cancel()
    }
    
    func resetCount() {
        count = 0
        self.Format(count: self.count)
    }
    
    func Format(count:Double){
        let formatter = DateFormatter()
        formatter.dateFormat = "mm:ss.SS"
        let targetDate = Date(timeIntervalSinceReferenceDate: TimeInterval(count))
        let str = formatter.string(from: targetDate)
        countFormat = str
    }
}