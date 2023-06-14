# SwiftUI ContributionChartView
![cover](https://github.com/Wadie-ess/SwiftGithubChart/blob/main/assets/cover.png)


<b>Contribution Chart View is a SwiftUI package that provides a customizable chart view to display contributions over a period of time, similar to GitHub's contribution chart.<br>
<img align="right" src="https://github.com/Wadie-ess/SwiftGithubChart/blob/main/assets/showCase.gif" width="480" />

<p>
  <p>
    <p>
<!-- <a href="https://exyte.com/contacts"><img src="https://i.imgur.com/vGjsQPt.png" width="134" height="34"></a> <a href="https://twitter.com/exyteHQ"><img src="https://i.imgur.com/DngwSn1.png" width="165" height="34"></a> -->

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fexyte%2FActivityIndicatorView%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fexyte%2FActivityIndicatorView%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![SPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![Cocoapods Compatible](https://img.shields.io/badge/cocoapods-Compatible-brightgreen.svg)](https://cocoapods.org/pods/ActivityIndicatorView)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](https://opensource.org/licenses/MIT)



## Features

- Visualize contributions with customizable colors.
- Adjustable number of days per row.
- Support for total days.

## Requirements

- iOS 13.0+ / macOS 10.15+
- Xcode 11.0+
- Swift 5.0+

## Installation
- Clone the repository:
- Open your Xcode project.
- Drag the ContributionChartView folder from Finder into your Xcode project.
- Ensure that the files are added to the appropriate target(s) in your project.
      
## Usage 
 - Import the module:
``` swift
 import GithubSwiftCharts
```
 - Create an instance of ContributionChartView:
 ``` swift
  let contributionData = [
    "2023-06-01": 4,
    "2023-06-02": 2,
    "2023-06-03": 9,
    // Add your contribution data here
]

let daysPerRow = 23
let totalDays = 90

let chartView = ContributionChartView(contributionData: contributionData, daysPerRow: daysPerRow, totalDays: totalDays)
 ```
      
 - Use chartView in your SwiftUI view hierarchy:
 ``` swift
      
      struct ContentView: View {
    var body: some View {
        VStack {
            // Your other views
            
            chartView
            
            // Your other views
        }
    }
}

```

### Swift Package Manager

You can use the Swift Package Manager to install ContributionChartView by adding it as a dependency in your `Package.swift` file:

```swift
.package(url: "https://github.com/your-username/ContributionChartView.git", from: "1.0.0")
```
 
## License
Feel free to use or to share this package as you want!
