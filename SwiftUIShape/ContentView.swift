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
        VStack(spacing: 30) {
            
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
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 100, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                }
                .fill(Color(.systemYellow))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 100, startAngle: Angle(degrees: 190.0), endAngle: Angle(degrees: 110), clockwise: true)
                }
                .fill(Color(.systemTeal))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 100, startAngle: Angle(degrees: 110.0), endAngle: Angle(degrees: 90), clockwise: true)
                }
                .fill(Color(.systemBlue))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 100, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                }
                .fill(Color(.systemPurple))
                .offset(x: 20, y: 20)
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 100, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 5)
                .offset(x: 20, y: 20)
                .overlay(
                    Text("25%")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 60, y: 80)
                )
            }
            
            Button(action: {
                
            }, label: {
                Text("Test")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .background(Dome().fill(Color.blue))
            })
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
