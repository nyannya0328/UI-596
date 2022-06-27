//
//  ReciptView.swift
//  UI-596
//
//  Created by nyannyan0328 on 2022/06/27.
//

import SwiftUI

struct ReciptView: View {
    var body: some View {
        VStack{
            
            VStack(spacing:10){
                
                 Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.green)
                
                Text("Payment Recived")
                    .font(.title3.bold())
                    .foregroundColor(.green)
                
                
                Text("150.698")
                    .font(.largeTitle.weight(.black))
                
                VStack(spacing:20){
                    
                    
                    Image("Pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:50,height:50)
                        .clipShape(Circle())
                        .padding(10)
                        .background{
                         
                           
                            Circle()
                                .fill(.white.shadow(.drop(color:.black.opacity(0.05),radius: 5)))
                        }
                    
                    Text("The Anheim Hotel")
                        .font(.title2.weight(.semibold))
                    
                    
                    LabeledContent {
                        
                        Text("150.698")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Total Bill")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    LabeledContent {
                        
                        Text("0")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Total Tax")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    Label {
                        
                        Text("You got 240 Points")
                            .font(.callout)
                            .foregroundColor(Color("Purple"))
                        
                    } icon: {
                        Image("Prize")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:20,height:20)
                    }
                      .frame(maxWidth: .infinity,alignment: .leading)
                      .padding(.vertical,10)
                      .padding(.horizontal)
                      .background{
                       
                          
                          RoundedRectangle(cornerRadius: 10,style: .continuous)
                              .fill(Color("Purple").opacity(0.3))
                      }
                      .padding(.top,10)


                    
                    
                }
                .padding()
                .background{
                 
                    
                    RoundedRectangle(cornerRadius: 10,style: .continuous)
                        .fill(
                            .white.shadow(.drop(color:.black.opacity(0.05),radius: 10,x: 5,y:5)).shadow(.drop(color:.black.opacity(0.05),radius: 35,x:-5,y: -5))
                        )
                    //    .fill(.white.shadow(.drop(color:.black.opacity(0.3))))
                    
                        .padding(.top,55)
                }
             
                
                Text("Tranacion Details")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                
                VStack(spacing:15){
                    
                    
                    LabeledContent {
                        
                        Text("Apple Pay")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Payment Methodo")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    LabeledContent {
                        
                        Text("In Prosess")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Status")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    LabeledContent {
                        
                        Text("Apple Pay")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Payment Methodo")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    
                    LabeledContent {
                        
                        Text("25 jun 2022")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Transaction Date")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    LabeledContent {
                        
                        Text("9:25")
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.gray)
                        
                    } label: {
                        
                        Text("Transaction Time")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
            }
            .padding()
            .background{
                Color.white.ignoresSafeArea()
            }
            
            
            LabeledContent {
                
                Text("$150.069")
                    .font(.title2.weight(.semibold))
                    .foregroundColor(.gray)
                
            } label: {
                
                Text("Total Payment")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            .padding()
            .background{
             
                Color.white
            }
            
            
         
            
          
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .background{
         
            Color("BG").ignoresSafeArea()
        }
    }
}

struct ReciptView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
