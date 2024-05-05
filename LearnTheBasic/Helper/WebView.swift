//
//  WebView.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI
import Foundation
import SafariServices

struct WebView: UIViewControllerRepresentable {
    let url: URL
    
    // jika ada tanda panah berarti butuh return
    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>) -> SFSafariViewController {
        return SFSafariViewController (url: url)
    }
    
    func updateUIViewController (_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<WebView>) {
        
    }
}

