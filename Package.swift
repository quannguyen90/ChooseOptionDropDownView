// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChooseOptionDropDownView",
    products: [
       .library(name: "ChooseOptionDropDownView", targets: ["ChooseOptionDropDownView"])
   ],
   targets: [
       .target(
           name: "ChooseOptionDropDownView",
           path: "ChooseOptionDropDownView"
//           resources: [.process("/Assets/Media.xcassets")]
//           resources: [.process("/Assets/Media.xcassets")]
       )
   ]
)
