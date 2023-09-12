import SwiftUI

enum CalculatorButton: String {
    case zero = "0", one = "1", two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", decimal = "."
    case plus = "+", minus = "-", multiply = "*", divide = "÷", equals = "="
    case percent = "%", sign = "+/-", clear = "AC"
}

struct ContentView: View {
    let buttons: [[CalculatorButton]] = [
        [.clear, .sign, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .decimal, .equals]
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                Spacer()
                Text("0")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .background(Color.black)
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 10) {
                        ForEach(row, id: \.self) { button in
                            CalculatorButtonView(button: button)
                        }
                    }
                }
            }
        }
    }
}

struct CalculatorButtonView: View {
    var button: CalculatorButton
    
    var body: some View {
        Button(action: {
            // Handle button tap
        }) {
            Text(button.rawValue)
                .font(.system(size: 32))
                .frame(
                    width: buttonWidth(button: button),
                    height: buttonHeight()
                )
                .foregroundColor(.white)
                .background(buttonBackgroundColor(button: button))
                .cornerRadius(buttonCornerRadius(button: button))
        }
    }
    
    private func buttonBackgroundColor(button: CalculatorButton) -> Color {
        switch button {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return Color(.darkGray)
        case .clear, .sign, .percent:
            return Color(.systemGray)
        case .divide, .multiply, .minus, .plus, .equals:
            return Color(.orange)
        case .decimal:
            return Color(.darkGray)
        }
    }
    
    private func buttonWidth(button: CalculatorButton) -> CGFloat {
        return button == .zero ? (UIScreen.main.bounds.width - 5 * 20) / 4 : (UIScreen.main.bounds.width - 5 * 20) / 5
    }
    
    private func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 20) / 5
    }
    
    private func buttonCornerRadius(button: CalculatorButton) -> CGFloat {
        return button == .zero ? (UIScreen.main.bounds.width - 5 * 20) / 4 : (UIScreen.main.bounds.width - 5 * 20) / 5 / 2
    }
}

