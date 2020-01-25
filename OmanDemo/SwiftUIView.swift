//
//  SwiftUIView.swift
//  OmanDemo
//
//  Created by admin on 1/25/20.
//  Copyright © 2020 Shayan Mehranpoor. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        webView(url: "https://www.google.com")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
