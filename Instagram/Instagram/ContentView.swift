//
//  ContentView.swift
//  Instagram
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        TabView {
            MyHomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            SearchMainView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
            PlusMainView()
                .tabItem {
                    Image(systemName: "plus.square.dashed")
                    Text("추가")
                }
            VideoMainView()
                .tabItem {
                    Image(systemName: "video.square")
                    Text("릴스")
                }
            MyPageMainView()
                .tabItem {
                    Image(systemName: "pencil.circle")
                    Text("마이페이지")
                }
                .badge(10)
        }
        .font(.headline)
      }

}


#Preview {
    ContentView()
}
