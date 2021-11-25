//
//  WebView.swift
//  SearchME
//
//  Created by James Lee on 2021/07/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var urlToLoad: String
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
            //만약에 받아온 urlToLoad를 이용하여 생성한 URL이 비어있다면
            // Unwrapping 과정
        guard let url = URL(string: self.urlToLoad.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!) else {
                return WKWebView()
            }
            // 웹뷰 인스턴스 생성
            let webview = WKWebView()
            // 웹뷰 load

            webview.load(URLRequest(url: url))
            webview.allowsBackForwardNavigationGestures = true
            webview.goBack()
            //webview.goForward()
            return webview
        }

    // update ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {

    }

}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlToLoad:  "https://www.naver.com")
    }
}
