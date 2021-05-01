//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by John Kouris on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                }
                .fill(Color(.systemYellow))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 190.0), endAngle: Angle(degrees: 110), clockwise: true)
                }
                .fill(Color(.systemTeal))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 110.0), endAngle: Angle(degrees: 90), clockwise: true)
                }
                .fill(Color(.systemBlue))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                }
                .fill(Color(.systemPurple))
                .offset(x: 20, y: 20)
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
                .offset(x: 20, y: 20)
                .overlay(
                    Text("25%")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 80, y: 80)
                )
            }
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(to: CGPoint(x: 200, y: 0), control: CGPoint(x: 100, y: -20))
                path.addLine(to: CGPoint(x: 200, y: 40))
                path.addLine(to: CGPoint(x: 200, y: 40))
                path.addLine(to: CGPoint(x: 0, y: 40))
            }
            .fill(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
