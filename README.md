# Prompter

[![CI Status](http://img.shields.io/travis/mpclarkson/Prompter.svg?style=flat)](https://travis-ci.org/hilenium/Prompter)
[![Version](https://img.shields.io/cocoapods/v/Prompter.svg?style=flat)](http://cocoapods.org/pods/Prompter)
[![License](https://img.shields.io/cocoapods/l/Prompter.svg?style=flat)](http://cocoapods.org/pods/Prompter)
[![Platform](https://img.shields.io/cocoapods/p/Prompter.svg?style=flat)](http://cocoapods.org/pods/Prompter)

## Intro

Prompter is light-weight Swift 2+ library that greatly simplifies capturing user input for command line (cli) applications on OSX and Linux.

Specifically, it allow you to prompt the user for input and validate that responses are (currently) `String`, `Int`, `Bool` or a valid choice from a pick-list.

## Installation

### Swift Package Manager

To add Prompter via the SPM, add the following to your `Package.swift` file:

```swift
let package = Package(
    name: "YourPackageName"
    dependencies: [
        .Package(url: "https://github.com/mpclarkson/Prompter.git", majorVersion: 1),
    ]
)
```

### CocoaPods

Prompter is available through [CocoaPods](http://cocoapods.org).

To install it, simply add the following line to your Podfile:

```ruby
pod "Prompter"
```

## Instructions

### Documentation
This library is well documented. View the [documentation](https://mpclarkson.github.io/Prompter/).

### Overview

Each `ask` method includes the following arguments:
- `question` - required
- `message` - optional string to override the default validation message
- `block` - an optional closure that is called on success

```Swift

import Prompter

let prompt = Prompt()

//Prompt the user for a string input
let name = prompt.askString("What is your name?", message: "This is an optional validation message!") { string in _
  //this is an optional block
}

//Prompt the user for a string input
let age = prompt.askInt("How old are you?")

//Prompt the user for a Boolean response
let age = prompt.askBool("Do you like beans")
//y, Y, Yes, yes, t, True, 1 are all true etc

let choices = ["beans", "apples"]
let age = prompt.askChoice("Which of these do you prefer", choices: choices)

```

## Todo

- askDate
- askMultiple
- initWithStyle
- formatting

##Tests

Run the tests using xctool:

```bash
xctool -workspace Prompter.xcworkspace --scheme Prompter
```

## Author

Matthew Clarkson from [Hilenium](http://hilenium.com) [@matt_clarkson](https://twitter.com/matt_clarkson)

## License

Prompter is available under the MIT license. See the LICENSE file for more info.
