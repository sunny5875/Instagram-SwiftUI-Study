//
//  MyHomeView.swift
//  Instagram
//
//  Created by 현수빈 on 1/21/24.
//

import SwiftUI

struct MyHomeView: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing: 0.0) {
                ForEach(0..<10) { _ in
                    postCell()
                }
            }
        }
    }
    
    @ViewBuilder func postCell() -> some View {
        VStack {
            HStack(spacing: 8.0) {
                Image("Image")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40.0, height: 40.0)
                
                VStack(alignment: .leading) {
                    Text("잔망루피.korea")
                        .fontWeight(.medium)
                    Text("광고")
                        .fontWeight(.light)
                }
                Spacer()
                Image(systemName: "ellipsis")
                
            }
            .padding(.horizontal, 20)
            
            Image("Image")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
            
            
            HStack(alignment: .center, spacing: 8.0) {
                Image(systemName: "suit.heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Image(systemName: "message")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            .padding(8)
            
            Text("pororo._.님 외 여러명이 좋아합니다")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(8)
            
            HStack(spacing: 4.0) {
                Text("잔망루피.Korea")
                    .bold()
                    .frame(width: .infinity, alignment: .leading)
                
                Text("swiftUI 재밌다 아하하")
                        .frame(width: .infinity, alignment: .leading)
                        .font(.callout)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 8)
            
            Button(action: {}, label: {
                Text("댓글 100개 모두 보기")
                    .font(.caption)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
            
        }
    }
}

#Preview {
    MyHomeView()
}
