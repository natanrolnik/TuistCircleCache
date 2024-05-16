// swift-tools-version: 5.10
import PackageDescription

#if TUIST
 import ProjectDescription
 import ProjectDescriptionHelpers

 let packageSettings = PackageSettings(
  productTypes: [
   "ComposableArchitecture": .framework, // default is .staticFramework
   "RevenueCat": .framework,
   "Lottie": .framework,
   "Firebase": .framework,
   "FirebaseRemoteConfig": .framework,
   "Mixpanel": .framework,
   "FacebookCore": .framework,
   "Singular": .framework,
  ]
 )
#endif

let package = Package(
 name: "Sharp",
 dependencies: [
  .package(url: "https://github.com/pointfreeco/swift-composable-architecture/", exact: "1.9.0"),
  .package(url: "https://github.com/RevenueCat/purchases-ios.git", .upToNextMinor(from: "4.38.1")),
  .package(url: "https://github.com/airbnb/lottie-ios", .upToNextMinor(from: "4.4.1")),
  .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMinor(from: "10.23.0")),
  .package(url: "https://github.com/mixpanel/mixpanel-swift", .upToNextMinor(from: "4.2.5")),
  .package(url: "https://github.com/facebook/facebook-ios-sdk", .upToNextMinor(from: "17.0.0")),
  .package(url: "https://github.com/singular-labs/Singular-iOS-SDK", .upToNextMinor(from: "12.0.0")),
 ]
)
