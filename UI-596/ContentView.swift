//
//  ContentView.swift
//  UI-596
//
//  Created by nyannyan0328 on 2022/06/27.
//

import SwiftUI

struct ContentView: View {
    @State var generatedImage : Image?
    @State var generatedPDF : URL?
    
    @State var sharink : Bool = false
    
    var body: some View {
        GeometryReader{proxy in
            
             let size = proxy.size
            
            ZStack(alignment: .top) {
                
                ReciptView()
                
          
                
                HStack(spacing:20){
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "xmark")
                    }
                    
                    Spacer()
                    
                    
                    if let generatedImage{
                        
                        ShareLink(item: generatedImage,preview: SharePreview("Payment Resip")){
                            
                            Image(systemName: "square.and.arrow.up")
                            
                        }
                        
                    }
                    
                  
                    
                    
                    if let _  = generatedPDF{
                        
                        
                        
                        Button {
                            
                            sharink.toggle()
                            
                        } label: {
                            
                            Image(systemName: "arrow.up.doc")
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                    

                }
                .foregroundColor(.gray)
                .padding()
                
             
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear{
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    
                    
                    renderView(viewSize: size)
                }
                
            }
            
        }
        .sheet(isPresented: $sharink) {
            
            if let generatedPDF{
                
                ShareSeet(items: [generatedPDF])
            }
            
            
        }
    }
    @MainActor
    func renderView(viewSize : CGSize){
        
        
        let rendar = ImageRenderer(content: ReciptView().frame(width:viewSize.width,height: viewSize.height))
        
        if let image = rendar.uiImage{
            
            
            generatedImage = Image(uiImage: image)
        }
        
        let tempURL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
        
        let redarURL = tempURL.appending(path: "\(UUID().uuidString).pdf")
        
        if let consmer = CGDataConsumer(url: redarURL as CFURL),let contex = CGContext(consumer: consmer, mediaBox: nil, nil){
            
            rendar.render { size, rendar in
                
                
                var medaBox = CGRect(origin: .zero, size: size)
                
                contex.beginPage(mediaBox: &medaBox)
                rendar(contex)
                contex.endPDFPage()
                contex.closePDF()
                
                generatedPDF = redarURL
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
