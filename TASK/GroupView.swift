//
//  GroupView.swift
//  TASK
//
//  Created by admin on 2020/5/24.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    
    var imgName = "",content = "",userName = "",userImgName = "",likedCount = 0
    let w = UIScreen.main.bounds.size.width;

    var body: some View {
        VStack(alignment: .center, spacing: 5){
            Image(imgName).resizable()
                .scaledToFill()
            Text(content).font(.headline)
                .frame(width:w/2.1,height:40)
                .scaledToFit()
                .lineLimit(nil)
                .minimumScaleFactor(0.7)
            HStack(){
                CircleImage(imgName: userImgName).aspectRatio(contentMode: .fit)
                Text(userName)
                    .font(.caption)
                    //.frame(width:80,height:30)
                    .scaledToFit()
                    .lineLimit(1)
                    .minimumScaleFactor(1)
                Spacer()
                Text(String(likedCount))
                    .font(.footnote)
                    //.frame(width:60,height:30)
                    .scaledToFit()
                    .lineLimit(1)
                    .minimumScaleFactor(1)
                
            }
            
        }
        
    }
    
    init(imgName : String, content:String, userName:String ,userImgName:String, likedCount:Int){
        self.imgName = imgName
        self.content = content
        self.userName = userName
        self.userImgName = userImgName
        self.likedCount = likedCount
    }
}

//struct GroupView_Previews: PreviewProvider {
//    static var previews: some View {
//       // GroupView()
//    }
//}


