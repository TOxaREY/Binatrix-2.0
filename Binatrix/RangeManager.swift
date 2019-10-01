//
//  RangeManager.swift
//  Binatrix
//
//  Created by REYNIKOV ANTON on 21.10.2017.
//  Copyright © 2017 REYNIKOV ANTON. All rights reserved.
//

import UIKit
import StoreKit
@available(iOS 10.3, *)
class RateManager {
    class func incrementCount() {
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count < 7 {
            UserDefaults.standard.set(count + 1, forKey: "run_count")
            UserDefaults.standard.synchronize()
        }
    }
    
    class func showRatesController () {
        let count = UserDefaults.standard.integer(forKey: "run_count")
        if count == 7 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                SKStoreReviewController.requestReview()
            })
        }
    }
}

