# Wallapop SwiftUI Components Kit

![SwiftVideoPlayerKit Banner](https://caneallestacursos.com/home/wp-content/uploads/2023/09/Clon-de-Wallapop-Udemy-Promo.png)  

Welcome to Wallapop SwiftUI Components Kit! This repository contains a collection of reusable SwiftUI components, inspired by the Wallapop app. The components are designed with a clean and modern look to make it easy for you to integrate them into your own projects.

They are part of my course on Youtube and Udemy here I leave you links to them in case you are interested 😉👇
https://www.youtube.com/channel/UCs_ZcQxIWB4eNvyxpseA7vA?sub_confirmation=1.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Documentation](#documentation)
- [Contribution](#contribution)
- [License](#license)

## Features

- 🎨 Reusable SwiftUI components
- 📱 Wallapop app-inspired design
- 🔌 Easy integration into your projects
- 📝 Comprehensive documentation

## Requirements

- iOS 14.0 or later
- Xcode 12.0 or later
- Swift 5.3 or later
- SwiftUI 2.0 or later

## Installation

### Swift Package Manager

To add Wallapop SwiftUI Components Kit to your project using Swift Package Manager, add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/Ifullstack/Wallapop-SwiftUI-Components-Kit.git", .upToNextMajor(from: "1.0.0"))
]
targets: [
    .target(name: "YourTarget", dependencies: ["WallapopSwiftUIComponentsKit"])
]
```
## Usage
To use the components in your project, simply import the WallapopSwiftUIComponentsKit module and use the components as needed.

```swift
import SwiftUI
import WallaSCK

struct ContentView: View {
    var body: some View {
        textFieldsView
    }
    
    var textFieldsView: some View {
        VStack {
            DefaultAuthTextFieldsView(placeHolder: "Email",
                                      keyboardType: .emailAddress)
                .padding(.vertical)
            PasswordAuthTextFieldsView(placeHolder: "Password")
                .padding(.vertical)
        }
    }
}
```
## Documentation

Detailed documentation for each component can be found in the [Wiki](https://github.com/Ifullstack/Wallapop-SwiftUI-Components-Kit/wiki) section of this repository.

## Contribution

Contributions are welcome! If you have any ideas or suggestions for improving this library, feel free to submit a pull request or create an issue. Please follow the existing coding style and ensure that your changes don't break any existing functionality.

## License

Wallapop SwiftUI Components Kit is released under the MIT License. See [LICENSE](LICENSE) for more information.













