import SwiftUI

struct Quote {
    let text: String
    let author: String
}

struct ContentView: View {
    let quotes: [Quote] = [
        Quote(text: "The best way to get started is to quit talking and begin doing.", author: "Walt Disney"),
        Quote(text: "Don’t let yesterday take up too much of today.", author: "Will Rogers"),
        Quote(text: "It’s not whether you get knocked down, it’s whether you get up.", author: "Vince Lombardi"),
        Quote(text: "If you are working on something exciting, it will keep you motivated.", author: "Steve Jobs"),
        Quote(text: "Success doesn’t come from what you do occasionally, it comes from what you do consistently.", author: "Marie Forleo"),
        Quote(text: "Don’t watch the clock; do what it does. Keep going.", author: "Sam Levenson"),
        Quote(text: "Keep your face always toward the sunshine—and shadows will fall behind you.", author: "Walt Whitman"),
        Quote(text: "Success is not in what you have, but who you are.", author: "Bo Bennett"),
        Quote(text: "The harder you work for something, the greater you’ll feel when you achieve it.", author: "Anonymous"),
        Quote(text: "Push yourself, because no one else is going to do it for you.", author: "Anonymous")
    ]

    @State private var timeOn = false
    @State private var count = 0
    @State private var timer: Timer? = nil
    @State private var animateQuote = false
    @State private var animateButton = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)

            VStack(spacing: 30) {
                Text("🌟 Daily Motivation 🌟")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

                VStack {
                    Text(quotes[count].text)
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0.6), value: animateQuote)

                    Text("– \(quotes[count].author)")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(.white.opacity(0.85))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                }

                Button(action: {
                    animateButton = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        animateButton = false
                    }

                    if timeOn {
                        timer?.invalidate()
                        timer = nil
                    } else {
                        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { _ in
                            withAnimation {
                                count = (count + 1) % quotes.count
                                animateQuote.toggle()
                            }
                        }
                    }
                    timeOn.toggle()
                }) {
                    Text(timeOn ? "⏹ Stop Timer" : "▶️ Start Timer")
                        .padding()
                        .background(Color.orange.opacity(0.9))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .scaleEffect(animateButton ? 1.1 : 1.0)
                        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: animateButton)
                }

                Button(action: {
                    withAnimation {
                        count = (count + 1) % quotes.count
                        animateQuote.toggle()
                    }
                }) {
                    Text("➡️ Next Quote")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.white.opacity(0.15))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
