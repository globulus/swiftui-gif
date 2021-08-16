# SwiftUI GIF

Lightweight SwiftUI component for rendering GIFs from data or assets, with no external dependencies. As a bonus, there's an extension that loads GIFs into `UIImage`s,  as well as a UIKIt-compatible `UIGIFImage` class.

![Preview](https://github.com/globulus/swiftui-gif/blob/main/Images/preview.gif?raw=true)

## Installation

This component is distributed as a **Swift package**.

## Sample usage

```swift
import SwiftUIGIF

struct GIFImageTest: View {
    @State private var imageData: Data? = nil
    
    var body: some View {
        VStack {
            GIFImage(name: "preview") // load from assets
                .frame(height: 300)
            if let data = imageData {
                GIFImage(data: data) // load from data
                    .frame(width: 300)
            } else {
                Text("Loading...")
                    .onAppear(perform: loadData)
            }
        }
    }
    
    private func loadData() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://github.com/globulus/swiftui-webview/raw/main/Images/preview_macos.gif?raw=true")!) { data, response, error in
            imageData = data
        }
        task.resume()
    }
}
```

## Recipe

For a more detailed description of the code, [visit this recipe](https://swiftuirecipes.com/blog/webview-in-swiftui). Check out [SwiftUIRecipes.com](https://swiftuirecipes.com) for more **SwiftUI recipes**!
