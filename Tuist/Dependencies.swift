//
//  Dependencies.swift
//  Config
//
//  Created by inforex on 2022/10/13.
//

import ProjectDescription
import ProjectDescriptionHelpers

let spm = SwiftPackageManagerDependencies([
    .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMinor(from: "5.0.0")),
    .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "2")),
    .remote(url: "https://github.com/onevcat/Kingfisher.git", requirement: .upToNextMajor(from: "7.0.0"))
])

let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: spm,
    platforms: [.iOS]
)

