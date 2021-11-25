//
//  ContentView.swift
//  SearchME
//
//  Created by James Lee on 2021/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var InputString: String = ""
        
    enum Index: String  {
        case naver, google, daum
    }
    
    @State var index: Index = .naver
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Search Anything!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .padding(.bottom, 50)
                    TextField("검색할 단어를 입력하세요", text: $InputString)
                        .font(.title)
                        .foregroundColor(.blue)
                        .frame(height: 100)
                        .padding(.leading, 50)
                        .background(Color.yellow)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                }
                .padding(.bottom, 70)
                HStack {
                    NavigationLink (
                        destination:
                            WebView(urlToLoad:  InputString == "" ? "https://www.naver.com" : "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=\(InputString.replacingOccurrences(of: " ", with: "+"))")) {
                        Text("Naver")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                    
                    NavigationLink (
                        destination: WebView(urlToLoad :  InputString == "" ? "https://www.google.com" : "https://www.google.com/search?q=\(InputString.replacingOccurrences(of: " ", with: "+"))")) {
                        Text("Google")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                    NavigationLink (
                        destination: WebView(urlToLoad:  InputString == "" ? "https://www.daum.net" : "https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&sq=&o=&q=\(InputString.replacingOccurrences(of: " ", with: "+"))")) {
                        Text("Daum")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)
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
