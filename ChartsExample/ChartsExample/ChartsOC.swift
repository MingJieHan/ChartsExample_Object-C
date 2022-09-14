//
//  ChartsOC.swift
//  ChartsExample
//
//  Created by jia yu on 2022/9/14.
//

import Foundation
import UIKit
import Charts
import SwiftUI
//import SalesOverview

@objc class OBChartView:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        addBehavior()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }

    var previews: some View {
        SalesOverview()
            .padding()
    }

    func addBehavior() {
        let child = UIHostingController(rootView: SalesOverview())
        child.view.translatesAutoresizingMaskIntoConstraints = false
        child.view.frame = self.bounds
        self.addSubview(child.view)
    }
}
