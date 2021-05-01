//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by John Kouris on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    
    private var purpleGradient = LinearGradient(gradient:
                                                    Gradient(colors:
                                                                [Color(red: 207/255, green: 150/255, blue: 207/255),
                                                                 Color(red: 107/255, green: 116/255, blue: 179/255)]
                                                    ),
                                                startPoint: .trailing,
                                                endPoint: .leading)
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(Color(.systemGray6), lineWidth: 20)
                    .frame(width: 300, height: 300)
                Circle()
                    .trim(from: 0, to: 0.85)
                    .stroke(purpleGradient, lineWidth: 20)
                    .frame(width: 300, height: 300)
                    .overlay(
                        VStack {
                            Text("85%")
                                .font(.system(size: 80, weight: .bold, design: .rounded))
                                .foregroundColor(Color(.systemGray))
                            Text("Complete")
                                .font(.system(.body, design: .rounded))
                                .bold()
                                .foregroundColor(Color(.systemGray))
                        }
                    )
            }
            
            Spacer().frame(height: 100)
            
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.4)
                    .stroke(Color(.systemBlue), lineWidth: 80)
                Circle()
                    .trim(from: 0.4, to: 0.6)
                    .stroke(Color(.systemTeal), lineWidth: 80)
                Circle()
                    .trim(from: 0.6, to: 0.75)
                    .stroke(Color(.systemPurple), lineWidth: 80)
                Circle()
                    .trim(from: 0.75, to: 1)
                    .stroke(Color(.systemYellow), lineWidth: 90)
                    .overlay(
                        Text("25%")
                            .font(.system(.title, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: 100, y: -80)
                    )
            }
            .frame(width: 250, height: 250)
        }
    }
}

struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
