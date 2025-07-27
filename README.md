# 🌟 Daily Motivation - Quotes App

A beautiful SwiftUI-based iOS application that displays inspirational quotes to keep you motivated throughout the day.

## Features

- **Curated Quotes Collection**: A collection of 10 carefully selected motivational quotes from renowned personalities
- **Auto-Timer Mode**: Automatically cycles through quotes every 10 seconds
- **Manual Navigation**: Browse quotes at your own pace with the "Next Quote" button
- **Smooth Animations**: Beautiful fade transitions between quotes with spring animations
- **Modern UI Design**: 
  - Purple-to-blue gradient background
  - Clean typography with proper spacing
  - Interactive buttons with hover effects
  - Responsive layout that adapts to different screen sizes

## Screenshots

The app features a clean, modern interface with:
- Large title "🌟 Daily Motivation 🌟"
- Quote text displayed prominently in the center
- Author attribution with elegant styling
- Two action buttons: Timer toggle and Next Quote

## 🎬 Demo

Check out the app in action! The demo video showcases all the key features including the smooth animations, timer functionality, and quote transitions.

**[📹 View Demo Video](demo/quotes-app-demo.mov)**

*Note: Click the link above to download and view the demo video, or navigate to the `demo/` folder in the project directory.*

## Technical Details

- **Platform**: iOS
- **Framework**: SwiftUI
- **Language**: Swift
- **Minimum iOS Version**: iOS 14.0+
- **Architecture**: MVVM pattern with state management

### Key Components

- `Quote` struct: Data model for storing quote text and author
- `ContentView`: Main view containing the UI and business logic
- State management using `@State` properties for animations and timer control
- Timer functionality for automatic quote rotation

## Installation

1. Clone this repository
2. Open `Quotes_App.xcodeproj` in Xcode
3. Select your target device or simulator
4. Build and run the project (Cmd + R)

## Requirements

- Xcode 12.0+
- iOS 14.0+
- macOS 11.0+ (for development)

## Usage

1. **View Quotes**: Launch the app to see the first motivational quote
2. **Start Timer**: Tap "▶️ Start Timer" to automatically cycle through quotes every 10 seconds
3. **Stop Timer**: Tap "⏹ Stop Timer" to pause automatic cycling
4. **Manual Navigation**: Use "➡️ Next Quote" to manually browse through the collection

## Customization

You can easily customize the app by:
- Adding new quotes to the `quotes` array in `ContentView.swift`
- Modifying the timer interval (currently set to 10 seconds)
- Changing colors, fonts, or animations to match your preferences
- Adding new features like favorite quotes or sharing functionality

## Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.

## License

This project is available for personal and educational use.

---

**Built with ❤️ using SwiftUI**
