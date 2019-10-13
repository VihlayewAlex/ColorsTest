//
//  StripView.swift
//  ColorsTest
//
//  Created by Alex on 13.10.2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import SwiftUI

struct StripView: View {
    
    @State var colors: [Color] = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    
    var body: some View {
        HStack(spacing: 0.0) {
            ForEach(0..<colors.count) { (index) in
                return Text("\(index)")
                    .frame(width: 64.0, height: 64.0)
                    .background(self.colors[index])
            }
        }
    }
    
}

struct StripView_Previews: PreviewProvider {
    static var previews: some View {
        StripView()
    }
}
