# HapticsButtonSwiftUI

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/SNQ-2001/HapticsButtonSwiftUI)](https://github.com/SNQ-2001/HapticsButtonSwiftUI/issues)
[![Github forks](https://img.shields.io/github/forks/SNQ-2001/HapticsButtonSwiftUI)](https://github.com/SNQ-2001/HapticsButtonSwiftUI/network/members)
[![Github stars](https://img.shields.io/github/stars/SNQ-2001/HapticsButtonSwiftUI)](https://github.com/SNQ-2001/HapticsButtonSwiftUI/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/SNQ-2001/HapticsButtonSwiftUI)](https://github.com/SNQ-2001/HapticsButtonSwiftUI/)
[![Github license](https://img.shields.io/github/license/SNQ-2001/HapticsButtonSwiftUI)](https://github.com/SNQ-2001/HapticsButtonSwiftUI/)

## Installation
HapticsButtonSwiftUI can be installed with the Swift Package Manager:

```
https://github.com/SNQ-2001/HapticsButtonSwiftUI
```

You can also clone the repository and build the library locally.

## How to use ?
```swift
import HapticsButtonSwiftUI

Button(haptics: .impact(.medium)) {
    // action
} label: {
    Text("Medium")
}
```

or

```swift
import Haptics

playImpactHaptic(.medium)
```

## License

HapticsButtonSwiftUI is available under the MIT license. See the [LICENSE](https://github.com/SNQ-2001/HapticsButtonSwiftUI/blob/main/LICENSE) file for more info.
