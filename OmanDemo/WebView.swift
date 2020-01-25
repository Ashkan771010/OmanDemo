//
//  WebView.swift
//  OmanDemo
//
//  Created by admin on 1/25/20.
//  Copyright © 2020 Shayan Mehranpoor. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct webView: UIViewRepresentable {
    var url: String
    func makeUIView(context: Context ) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<webView>) {
        
    }
}
