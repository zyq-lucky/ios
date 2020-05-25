//
//  ContentView.swift
//  TASK
//
//  Created by admin on 2020/5/24.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

let leftInfo:[(imgName:String,content:String,userName:String,userImgName:String,likedCount:Int)] = [
    (imgName: "pi", content: "可以说是为了一双鞋带而买一双鞋了😂 这也太少女了吧！买它！走在街上回头率老高，还有小孩子都要盯着我鞋上的史迪仔好", userName: "的哦豆yzq19970410", userImgName: "user1", likedCount: 11837),
    (imgName: "p2", content: "想体验公主抱吗？想知道穿S码都大的感觉吗？快跟着视频练起来吧", userName: "雪碧颜究所", userImgName: "user2", likedCount: 873894),
    (imgName: "p3", content: "10s快速系鞋带，超实用花样系鞋带！懒人的福利啊 告别单一系鞋带,让你鞋子亮起来", userName: "懒居life", userImgName: "user3", likedCount: 93484),
    (imgName: "p4", content: "桂花炼奶 Charlotte Tilbury Carina’s Star 像是裴塔美的颜色！ Charlotte Tilbury Hot Lips 2 限定口红Carina‘s Star @Ch", userName: "chvrry", userImgName: "user4", likedCount: 93832)
]

let rightInfo:[(imgName:String,content:String,userName:String,userImgName:String,likedCount:Int)] = [
    (imgName: "p3", content: "10s快速系鞋带，超实用花样系鞋带！懒人的福利啊 告别单一系鞋带,让你鞋子亮起来", userName: "懒居life", userImgName: "user3", likedCount: 93484),
    (imgName: "p5", content: "S婚礼日记】衣帽间大公开，小空间大储藏秘密 忙活了整整大半年的新家终于完工咯～别人都说装修一次，伤半条命，这话我算是深有体会了～😂😂😂😂😂😂 作为处女座", userName: "Sabrina柒", userImgName: "user5", likedCount: 76352),
    (imgName: "pi", content: "可以说是为了一双鞋带而买一双鞋了😂 这也太少女了吧！买它！走在街上回头率老高，还有小孩子都要盯着我鞋上的史迪仔好", userName: "的哦豆yzq19970410", userImgName: "user1", likedCount: 11837),
    (imgName: "p2", content: "想体验公主抱吗？想知道穿S码都大的感觉吗？快跟着视频练起来吧", userName: "雪碧颜究所", userImgName: "user2", likedCount: 873894)

]

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .top, spacing: 15){
                VStack(alignment: .leading, spacing: 10){
                    ForEach(leftInfo,id:\.imgName) { (imgName,content,userName,userImgName,likedCount) in
                        GroupView(imgName: imgName, content: content, userName: userName, userImgName: userImgName, likedCount: likedCount).aspectRatio(contentMode: .fit)
                    }
                }
                VStack{
                    ForEach(rightInfo,id:\.imgName) { (imgName,content,userName,userImgName,likedCount) in
                        GroupView(imgName: imgName, content: content, userName: userName, userImgName: userImgName, likedCount: likedCount).aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
