//
//  CircleImage.swift
//  TASK
//
//  Created by admin on 2020/5/24.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imgName = ""
    var body: some View {
        Image(imgName).resizable().frame(width: 25, height: 25, alignment: .center).scaledToFit()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
    }
    
    init(imgName : String){
        self.imgName = imgName
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imgName: "pi")
    }
}


