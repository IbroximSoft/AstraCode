//
//  WebView.swift
//  AstraCode
//
//  Created by Ibrohim - Soft on 14/08/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        let urlString = url.absoluteString
        if (urlString != "https://app.boshqar.com/"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        print(url)
        webView.load(request)
    }
}
  
extension WKWebView {
    override open var safeAreaInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

