import SwiftUI

struct ContentView: View {
    @State private var showanimation = false
    @State private var textSize = 16.0
    @State private var text: String = "Hello Academy"
    
    var body: some View {
        VStack {
            
            
            Toggle(isOn: $showanimation) {
                Text("Show Animation")
            }
            
            Spacer()
            
            Image(systemName: "rainbow")
                .font(.system(size: 150))
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.variableColor.reversing, isActive: showanimation)
            Text(text)
                .font(.system(size: textSize))
            
            Spacer()
            
            
            Slider(value: $textSize, in: 16...44)
            
            Button("Change Text"){
                text = "Hello learners"
            }
            .controlSize(.large)
            .buttonStyle(GlassProminentButtonStyle())
            .padding()
            
            
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

