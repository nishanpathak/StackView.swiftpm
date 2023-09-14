import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Circle
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .overlay(
                    Circle()
                        .stroke(Color.clear, lineWidth: 0) // Modifier 1: Clear stroke
                )
            
            // Rectangle
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
                .cornerRadius(0) // Modifier 2: Square corners
            
            // Ellipse
            Ellipse()
                .frame(width: 100, height: 50)
                .background(Color.brown)
                .overlay(
                    Ellipse()
                        .stroke(Color.orange, lineWidth: 5)
                )
            
            // Capsule
            Capsule(style: .circular)
                .frame(width: 300, height: 100)
                .foregroundColor(.cyan)
            
            // RoundedRectangle
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100)
                .foregroundColor(.red)
        }
        .padding()
        
        VStack(spacing: 20) {
            // MVP Shapes
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .overlay(
                    Circle()
                        .stroke(Color.clear, lineWidth: 0)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
                .cornerRadius(0)
            
            Ellipse()
                .frame(width: 100, height: 50)
                .background(Color.brown)
                .overlay(
                    Ellipse()
                        .stroke(Color.orange, lineWidth: 5)
                )
            
            Capsule(style: .circular)
                .frame(width: 300, height: 100)
                .foregroundColor(.cyan)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100)
                .foregroundColor(.red)
            
            // Single Shape with Multiple Modifiers
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple) // Modifier 1: Change fill color
                .overlay(
                    Circle()
                        .stroke(Color.yellow, lineWidth: 3) // Modifier 2: Add a yellow stroke
                )
                .shadow(color: .black, radius: 5) // Modifier 3: Add a shadow
            Rectangle()
                   .frame(width: 300, height: 50)
                   .foregroundColor(.purple) // Modifier 1: Change fill color
                   .overlay(
                       Rectangle()
                           .stroke(Color.yellow, lineWidth: 3) // Modifier 2: Add a yellow stroke
                   )
                   .shadow(color: .black, radius: 5) // Modifier 3: Add a shadow
                   .font(.custom("American Typewriter", size: 35)) // Modifier 4: Set font and size
                   .foregroundColor(.white) // Modifier 5: Set text color
                   .background(Color.blue) // Modifier 6: Set background color
                   .cornerRadius(10) // Modifier 7: Round corners
                   .multilineTextAlignment(.center) // Modifier 8: Center text
                   .padding() // Modifier 9: Add padding
           
        }
        .padding()
    }
    
    
    
    
    
    // MVP Shapes
    // ...
    
    // Single Shape with Multiple Modifiers
    
     
    
    
    
    
    
    
    
    
    
    
    
}

