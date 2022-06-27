//
//  ShareSeet.swift
//  UI-596
//
//  Created by nyannyan0328 on 2022/06/27.
//

import SwiftUI

struct ShareSeet: UIViewControllerRepresentable {
    var items : [Any]
    func makeUIViewController(context: Context) -> UIActivityViewController {
        
        let view = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        return view
        
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
