<p align="center">
  <img src="https://github.com/a-touman/muslim_pal/blob/main/assets/vectors/dua.svg" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">MUSLIM_PAL</h1>
</p>
<p align="center">
    <em> A Unified Interface for Islamic Content</em>
</p>
<p align="center">
	<!-- Shields.io badges not used with skill icons. --><p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<a href="https://skillicons.dev">
		<img src="https://skillicons.dev/icons?i=flutter,dart,gradle,kotlin,swift&theme=light">
	</a></p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [📍 Overview](#-overview)
- [🧩 Features](#-features)
- [🗂️ Repository Structure](#️-repository-structure)
- [📦 Modules](#-modules)
- [🚀 Getting Started](#-getting-started)
  - [⚙️ Installation](#️-installation)
  - [🤖 Usage](#-usage)
  - [🧪 Tests](#-tests)
- [🛠 Project Roadmap](#-project-roadmap)
- [🤝 Contributing](#-contributing)
- [🎗 License](#-license)
- [🔗 Acknowledgments](#-acknowledgments)
</details>
<hr>


|       ![1.png](https://github.com/a-touman/muslim_pal/blob/main/preview/1.png)                |    ![2.png](https://github.com/a-touman/muslim_pal/blob/main/preview/2.png)                 |      ![3.png](https://github.com/a-touman/muslim_pal/blob/main/preview/3.png)            |
|--------------------|--------------------|--------------------|
|                    |                    |                    |
|      ![4.png](https://github.com/a-touman/muslim_pal/blob/main/preview/4.png)              |        ![5.png](https://github.com/a-touman/muslim_pal/blob/main/preview/5.png)             |       ![6.png](https://github.com/a-touman/muslim_pal/blob/main/preview/6.png)              |




## 📍 Overview



muslim_pal is an open-source Flutter application designed to enable high-quality, cross-platform experiences on various operating systems. This app is designed to assist Muslims with prayer times and supplications (duas). It provides accurate prayer times based on location, displays the current and next prayer, and includes features for suhoor and iftar timings. Users can explore various categories of duas, such as morning, evening, studying, and traveling, with references for authenticity. The app also allows users to track and repeat supplications, making it a useful tool for daily spiritual practice. Additionally, it includes a Hijri calendar converter to help users keep track of Islamic dates.

---

## 🧩 Features

| Feature         | Description |
|-------------------|---------------------------------------------------------------|
| **Efficient use of Flutter**: Leverage Flutter's strengths in delivering cross-platform apps with native performance on iOS and Android. This optimizes resource consumption (CPU/GPU) as the app interacts across devices, resulting from better integration at different abstraction levels, like mobile-specific GUI implementation leveraging OS and hardware capabilities while offering platform-independent development practices. |

**Security**
| Feature         | Description |

---

## 🗂️ Repository Structure

```sh
└── muslim_pal/
    ├── MuslimPalcons
    │   └── MyFlutterApp.ttf
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   ├── build.gradle
    │   ├── gradle
    │   ├── gradle.properties
    │   └── settings.gradle
    ├── assets
    │   ├── MyFlutterApp.ttf
    │   └── vectors
    ├── fonts
    │   ├── EffraVF_Trial_Wght.ttf
    │   ├── EffraVF_Trial_WghtItal.ttf
    │   ├── Effra_Trial_Bd.ttf
    │   ├── Effra_Trial_BdIt.ttf
    │   ├── Effra_Trial_Blk.ttf
    │   ├── Effra_Trial_BlkIt.ttf
    │   ├── Effra_Trial_Hair.ttf
    │   ├── Effra_Trial_HairIt.ttf
    │   ├── Effra_Trial_It.ttf
    │   ├── Effra_Trial_Lt.ttf
    │   ├── Effra_Trial_LtIt.ttf
    │   ├── Effra_Trial_Md.ttf
    │   ├── Effra_Trial_MdIt.ttf
    │   ├── Effra_Trial_Rg.ttf
    │   ├── Effra_Trial_SBd.ttf
    │   ├── Effra_Trial_SBdIt.ttf
    │   ├── Effra_Trial_Th.ttf
    │   ├── Effra_Trial_ThIt.ttf
    │   ├── Effra_Trial_XBd.ttf
    │   ├── Effra_Trial_XBdIt.ttf
    │   └── me_quran.ttf
    ├── ios
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── lib
    │   ├── app
    │   ├── main.dart
    │   ├── routes
    │   └── translations
    ├── linux
    │   ├── .gitignore
    │   ├── CMakeLists.txt
    │   ├── flutter
    │   ├── main.cc
    │   ├── my_application.cc
    │   └── my_application.h
    ├── macos
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── pubspec.lock
    ├── pubspec.yaml
    ├── test
    │   └── widget_test.dart
    ├── web
    │   ├── favicon.png
    │   ├── icons
    │   ├── index.html
    │   └── manifest.json
    └── windows
        ├── .gitignore
        ├── CMakeLists.txt
        ├── flutter
        └── runner
```

---

## 📦 Modules

<details closed><summary>.</summary>

| File                                                                                              | Summary                                                                                                                                                                                                                                                                 |
| ---                                                                                               | ---                                                                                                                                                                                                                                                                     |
| [pubspec.yaml](https://github.com/a-touman/muslim_pal/blob/master/pubspec.yaml)                   | Activate Flutter package dependencies for your project by adding this file as pubspec.yaml" with the following contents. Modify dependencies according to the specified versions.                                                                                       |
| [analysis_options.yaml](https://github.com/a-touman/muslim_pal/blob/master/analysis_options.yaml) | Enable recommended lints for Flutter apps, packages, and plugins through the inclusion of external configurations, ensuring adherence to best coding practices by statically analyzing Dart code and surfacing errors, warnings, and lints in IDEs or on command lines. |

</details>

<details closed><summary>linux</summary>

| File                                                                                            | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---                                                                                             | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| [my_application.cc](https://github.com/a-touman/muslim_pal/blob/master/linux/my_application.cc) | Implementing the Main Application LogicThe file my_application.cc defines the core functionality of the main application window, including its activation, command-line argument handling, and disposal logic for a Linux-based Flutter application.Registering plugins and launching the Dart project are also crucial aspects handled within this code.                                                                                                                                                                                                                                                                                     |
| [main.cc](https://github.com/a-touman/muslim_pal/blob/master/linux/main.cc)                     | Deploying this file enables the Linux desktop application build process, making it a critical part of the projects architecture. It bridges the native C++ and Flutter development, allowing users to run the app on various platforms using a unified interface.Compiling this file also sets up necessary configurations for the CMake system to generate Makefiles automatically.Linking this file into the build pipeline allows developers to manage dependencies and maintain a clean, portable Linux-specific setup for the overall application.                                                                                       |
| [CMakeLists.txt](https://github.com/a-touman/muslim_pal/blob/master/linux/CMakeLists.txt)       | Always include the generated cmake file in your projects root directory and avoid modifying it directly.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [my_application.h](https://github.com/a-touman/muslim_pal/blob/master/linux/my_application.h)   | Creates and manages Flutter-based applications across various platforms, ensuring seamless integration and unified functionality through the use of shared classes and interfaces.Developed to enable cross-platform compatibility, this file plays a pivotal role in bridging the gap between different operating systems by providing a consistent and harmonized experience for users. Designed with scalability and extensibility in mind, this code allows for effortless adaptation and customization as new platforms are added or features are introduced.Essential for achieving consistency and harmony across disparate platforms. |

</details>

<details closed><summary>web</summary>

| File                                                                                  | Summary                                                                                                                                                                                                                                                              |
| ---                                                                                   | ---                                                                                                                                                                                                                                                                  |
| [manifest.json](https://github.com/a-touman/muslim_pal/blob/master/web/manifest.json) | Defines metadata for Progressive Web App (PWA), including name, start URL, background color, and icons for different screen densities, enabling seamless desktop-like experience on mobile devices.                                                                  |
| [index.html](https://github.com/a-touman/muslim_pal/blob/master/web/index.html)       | Launches a Flutter web app serving as an entry point for users, leveraging the base href provided by flutter build. It initializes the engine, runs the app, and enables seamless navigation across iOS devices. Enhances user experience through responsive design. |

</details>

<details closed><summary>lib</summary>

| File                                                                          | Summary                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                           | ---                                                                                                                                                                                                                                                                                                                                     |
| [main.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/main.dart) | Establishing a solid foundation, main.dart orchestrates app initialization, ensuring proper orientation and font adaptation for various screen sizes. It also initializes the GetStorage package, sets up the Material App with customized theme, routes, translations, and locale, laying the groundwork for seamless user experience. |

</details>

<details closed><summary>android</summary>

| File                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [settings.gradle](https://github.com/a-touman/muslim_pal/blob/master/android/settings.gradle) | Configure and integrate the Flutter SDK into Android projects by setting the Flutter SDK path in local properties, including the Flutter tools Gradle plugin, and applying the Dev Flutter Gradle plugin with version control.Ensure correct configuration for multi-platform apps across different operating systems, guaranteeing seamless integration of fonts, assets, and UI components. Highlight the critical feature of this code is its ability to include Flutter plugins and SDK in a standardized way across different Android projects. |
| [build.gradle](https://github.com/a-touman/muslim_pal/blob/master/android/build.gradle)       | Configure build environment settings by defining Kotlin version, repositories, and dependencies for Gradle plugin usage across all project modules. Establish a common build directory path for all subprojects while enabling evaluation of app module dependencies within each one. Clean up root build directory with task execution.                                                                                                                                                                                                             |

</details>

<details closed><summary>test</summary>

| File                                                                                         | Summary                                                                                                                                                                                                                                     |
| ---                                                                                          | ---                                                                                                                                                                                                                                         |
| [widget_test.dart](https://github.com/a-touman/muslim_pal/blob/master/test/widget_test.dart) | Validate Test Widget CreationIn the context of the Muslim Pal app architecture, this test file achieves comprehensive widget validation, ensuring the Counter increments smoke test functionality is implemented correctly and efficiently. |

</details>

<details closed><summary>windows</summary>

| File                                                                                        | Summary                                                                                                                                                                                                                                                                                                       |
| ---                                                                                         | ---                                                                                                                                                                                                                                                                                                           |
| [CMakeLists.txt](https://github.com/a-touman/muslim_pal/blob/master/windows/CMakeLists.txt) | Configures CMake for building a Windows-based application, sets binary name, defines build configuration options, and specifies compilation settings for targets. Enables Unicode for all projects, adds standard settings for targets, and installs supporting files and libraries alongside the executable. |

</details>

<details closed><summary>ios.Runner</summary>

| File                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                         |
| [AppDelegate.swift](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/AppDelegate.swift)               | Configuring Flutter Platform is crucial here as it enables the apps core functionality on various platforms. This AppDelegate class facilitates this setup, registering essential plugins and ensuring the applications proper initialization. Its role is vital in preparing the ground for subsequent components to integrate seamlessly. |
| [Runner-Bridging-Header.h](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Runner-Bridging-Header.h) | Regulates ios-Runners integration by importing GeneratedPluginRegistrant header. This ensures seamless plugin registration during application launch on iOS devices, bridging native and Flutter code to deliver a unified user experience. Critical for maintaining app functionality across different environments.                       |
| [Info.plist](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Info.plist)                             | Defines iOS App DetailsEstablishes the apps location usage description, development region, display name, executable name, bundle identifier, info dictionary version, and supported interface orientations. This configuration is essential for a successful iOS build in the Muslim Pal repository structure.                             |

</details>

<details closed><summary>ios.RunnerTests</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                                                                                        |
| [RunnerTests.swift](https://github.com/a-touman/muslim_pal/blob/master/ios/RunnerTests/RunnerTests.swift) | Asserting Test Cases====================RunnerTests.swift plays a crucial role in ensuring the reliability of the iOS Runner application by providing test cases for critical scenarios.Implementing Unit Tests-----------------------The class contains an example test method to demonstrate proper test structure and execution, serving as a guideline for developers to write comprehensive tests for their codebase. |

</details>

<details closed><summary>ios.Flutter</summary>

| File                                                                                                            | Summary                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                             | ---                                                                                                                                                                                                                                                                                                                                                                                              |
| [Debug.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/ios/Flutter/Debug.xcconfig)                 | Configuring iOS Debug Build SettingsThe Debug.xcconfig file includes Generated.xcconfig which sets up the necessary build settings for an iOS debug environment within the Flutter application architecture.Builds and compiles the code in a development mode, making it easier to test and identify issues in real-time.Automates various setup procedures for the iOS platform.               |
| [Release.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/ios/Flutter/Release.xcconfig)             | Configures Release Build for iOSEnables debug symbols for release buildsDefines optimization level as fastestSets SDK to latest iOS version available                                                                                                                                                                                                                                            |
| [AppFrameworkInfo.plist](https://github.com/a-touman/muslim_pal/blob/master/ios/Flutter/AppFrameworkInfo.plist) | Identifying Key Features of AppFrameworkInfo.plist---------------------------------------------------Configures essential framework information for Flutter apps on iOS devices.Declares the bundle identifier as io.flutter.flutter.app and specifies minimum OS version as 11.0.Provides metadata to uniquely identify the application, enabling platform-specific features and functionality. |

</details>

<details closed><summary>ios.Runner.xcworkspace</summary>

| File                                                                                                                           | Summary                                                                                                                                                                                                                                                                             |
| ---                                                                                                                            | ---                                                                                                                                                                                                                                                                                 |
| [contents.xcworkspacedata](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcworkspace/contents.xcworkspacedata) | Creating and configuring an Xcode project workspace is what this file achieves. It references a specific Runner.xcodeproj, allowing for efficient organization and management within the larger iOS architecture. This facilitates streamlined development and debugging processes. |

</details>

<details closed><summary>ios.Runner.xcodeproj</summary>

| File                                                                                                       | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ---                                                                                                        | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [project.pbxproj](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcodeproj/project.pbxproj) | Parent Repository:**The `muslim_pal` repository hosts an open-source Flutter project with a collection of digital assets for Muslims. The repository structure suggests a multi-platform approach, with separate folders for Android and web development.**Code File Purpose:**The code file is part of the Flutter app development in this repository, likely responsible for:* Providing critical typography elements through font management.* Utilizing digital assets to enhance user experience (e.g., MyFlutterApp.ttf and EffraVF_Trial_Wght.ttf).* Implementing a visually appealing design that adheres to the brand identity.**Key Features:**The code file probably incorporates features like:* Font selection and rendering* Vector graphic management for logos, icons, or UI elements* Color palette consistency across the appBy focusing on these high-level details, Ive avoided diving into technical implementation specifics. As a Tech Lead and Software Engineer, my goal was to highlight the core purpose and functionality of the code file within its parent repository's architecture. |

</details>

<details closed><summary>ios.Runner.Base.lproj</summary>

| File                                                                                                                        | Summary                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                         | ---                                                                                                                                                                                                                                                                                         |
| [LaunchScreen.storyboard](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Base.lproj/LaunchScreen.storyboard) | Launching the application on iOS devices is facilitated by this LaunchScreen.storyboard file, which configures the initial view controller, sets up layout guides, and defines constraints for the image view displaying the launch image, aligning it centrally on screen.                 |
| [Main.storyboard](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Base.lproj/Main.storyboard)                 | Configure the iOS user interface by designing the Main.storyboard file within the ios/Runner/Base.lproj folder structure. This setup defines the layout, navigation, and appearance of the application on iPhone devices, aligning with the projects overall architecture and requirements. |

</details>

<details closed><summary>ios.Runner.Assets.xcassets.LaunchImage.imageset</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                           |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                               |
| [Contents.json](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json) | Define LaunchImage asset set as the primary entry point for app presentation on startup, featuring three image assets designed for universal devices at different screen scales, ensuring seamless visual experiences across various iOS devices. |

</details>

<details closed><summary>ios.Runner.Assets.xcassets.AppIcon.appiconset</summary>

| File                                                                                                                            | Summary                                                                                                                                                                                                                                                                 |
| ---                                                                                                                             | ---                                                                                                                                                                                                                                                                     |
| [Contents.json](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json) | Define App Icon Assets for iOS DeploymentThe file contains configuration details for the app icon assets used during deployment on iOS devices, covering various screen sizes and scales, ensuring seamless compatibility with different device resolutions and idioms. |

</details>

<details closed><summary>ios.Runner.xcworkspace.xcshareddata</summary>

| File                                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                  |
| [WorkspaceSettings.xcsettings](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings) | Modifying Workspace Settings Ensures Seamless Preview Experience.Enables iOS project setup for proper preview functionality, disabling previews for optimal performance. This critical feature is essential to the successful integration of the MuslimPal app on various Apple devices.                                             |
| [IDEWorkspaceChecks.plist](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist)         | Configuration ensures macOS-specific workspace settings are applied.The file defines a boolean value indicating whether the IDE computes a specific warning for Mac32-bit architectures. This setting influences how Flutter apps run on iOS devices. The configuration is essential to maintaining app stability and functionality. |

</details>

<details closed><summary>ios.Runner.xcodeproj.project.xcworkspace</summary>

| File                                                                                                                                             | Summary                                                                                                                                                                                                                                                                                         |
| ---                                                                                                                                              | ---                                                                                                                                                                                                                                                                                             |
| [contents.xcworkspacedata](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata) | Configures Xcode Workspace for Runner Project, defining the project structure and settings. It serves as the core configuration file for building, debugging, and testing the application on iOS platforms. Centralizes project configurations, facilitating streamlined development processes. |

</details>

<details closed><summary>ios.Runner.xcodeproj.xcshareddata.xcschemes</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                                                                                                                                        |
| [Runner.xcscheme](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme) | DefineBuildsAndTestsSchemes enables developers to configure various build actions and testing schemes for their iOS projects, ensuring seamless integration with the Xcode environment and facilitating efficient development workflows. This configuration ensures proper compilation and debugging procedures are in place for smooth project execution. |

</details>

<details closed><summary>ios.Runner.xcodeproj.project.xcworkspace.xcshareddata</summary>

| File                                                                                                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                         |
| ---                                                                                                                                                                   | ---                                                                                                                                                                                                                                                                                                                                             |
| [WorkspaceSettings.xcsettings](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings) | Customize Preview Behavior enables the user to control how app previews behave on device. This feature disables preview behavior by default but can be modified to suit specific app development requirements and ensure consistent app presentation. It is crucial for maintaining app consistency in appearance across different iOS devices. |
| [IDEWorkspaceChecks.plist](https://github.com/a-touman/muslim_pal/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist)         | Checking shared data for IDE Workspace warnings reveals crucial information about Mac compatibility. This file assesses the need to compute warnings regarding Mac32-bit compatibility. It plays a vital role in determining the build process, ensuring smooth execution across various Apple devices.                                         |

</details>

<details closed><summary>macos.Runner</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [Release.entitlements](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Release.entitlements)           | Entitlements configure application sandboxing on macOS. This file establishes compliance with App Sandbox requirements by setting a key value to indicate app-sandbox entitlement. The com.apple.security.app-sandbox key is set to True, enforcing the sandboxing rules and restrictions for the macOS application.                                                                                                                               |
| [DebugProfile.entitlements](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/DebugProfile.entitlements) | Entitlements Enablement DeliversProfile-based entitlement management allows for tailored access control within macOS environments, streamlining application permissions without compromising security standards.Security Enhancements FacilitateDebug profile setup automates entitlement assignment for development purposes, ensuring streamlined debugging experiences and expedited development cycles through optimized access configuration. |
| [MainFlutterWindow.swift](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/MainFlutterWindow.swift)     | Creates the main window for the macOS application, registering generated plugins and setting up the Flutter view controller upon window activation.Instantiates the `FlutterViewController` to power the app's user interface and integrates it into the native Cocoa window.Leverages the plugin registration mechanism to load custom-generated code, facilitating seamless interactions between platform-specific and Dart codebases.           |
| [AppDelegate.swift](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/AppDelegate.swift)                 | Configure Native Platform for Mac App**The file initializes FlutterMacOS plugin on macOS platform, handling application termination after last window closure.It integrates Flutter engine with Cocoa framework, enabling seamless interaction between Flutter widgets and native Mac OS features.**Manage Application Lifespan**The code ensures a smooth user experience by terminating the application after closing its windows.               |
| [Info.plist](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Info.plist)                               | Defines runtime attributes for macOS build process.Establishes settings for development, executable, icon file, bundle identifier, info dictionary version, name, package type, and human-readable copyright information. Specifies the minimum system version required to run the application.Determines key components for successful macos deployment.                                                                                          |

</details>

<details closed><summary>macos.RunnerTests</summary>

| File                                                                                                        | Summary                                                                                                                                                                    |
| ---                                                                                                         | ---                                                                                                                                                                        |
| [RunnerTests.swift](https://github.com/a-touman/muslim_pal/blob/master/macos/RunnerTests/RunnerTests.swift) | Verify the purpose of this test file is to ensure proper functionality of the Flutter application on macOS devices by exercising various scenarios through its unit tests. |

</details>

<details closed><summary>macos.Flutter</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                                |
| [Flutter-Debug.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Flutter/Flutter-Debug.xcconfig)                   | Configures Debug Build Settings for macOS Flutter Application.Determines optimized compile and run-time settings, such as debug symbols, optimization level, and performance monitoring options.Aids in creating a consistent development experience across various build configurations.Employs ephemeral/Flutter-Generated.xcconfig for generating config files. |
| [GeneratedPluginRegistrant.swift](https://github.com/a-touman/muslim_pal/blob/master/macos/Flutter/GeneratedPluginRegistrant.swift) | GeolocatorPlugin and PathProviderPlugin. Integrates third-party plugins to the Flutter framework on macOS, enhancing app functionality. Handles plugin initialization and configuration in accordance with Flutters requirements, streamlining plugin development and usage within macOS-based projects.                                                           |
| [Flutter-Release.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Flutter/Flutter-Release.xcconfig)               | Configuring MacOS builds necessitates loading ephemeral settings through the inclusion of Flutter-Generated.xcconfig to ensure a seamless integration with Flutter's release process for Muslim Pal. This configuration plays a crucial role in automating builds and deployments for the application.                                                             |

</details>

<details closed><summary>macos.Runner.xcworkspace</summary>

| File                                                                                                                             | Summary                                                                                                                                                                                                                  |
| ---                                                                                                                              | ---                                                                                                                                                                                                                      |
| [contents.xcworkspacedata](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner.xcworkspace/contents.xcworkspacedata) | Defines the workspace structure for the macos Runner project, linking it to its associated Xcode project, Runner.xcodeproj. This configuration is crucial for maintaining a clean and organized development environment. |

</details>

<details closed><summary>macos.Runner.xcodeproj</summary>

| File                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| [project.pbxproj](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner.xcodeproj/project.pbxproj) | Code File: MyFlutterApp.ttf**This font file is part of the `muslim_pal` repository, which focuses on developing a mobile app for Muslim users. The purpose of this `MyFlutterApp.ttf` file is to provide a custom font for use within the app.The critical feature of this code file is that it enables the use of a visually distinct and culturally relevant font for the app's UI components. This contributes to the overall brand identity and user experience of the `Muslim Pal` mobile app. By incorporating this unique font, the app developers can create an engaging visual theme that resonates with their target audience.In summary, **MyFlutterApp.ttf** plays a key role in the `muslim_pal` repository by serving as a custom font for the mobile app, enhancing its overall branding and user experience. |

</details>

<details closed><summary>macos.Runner.Configs</summary>

| File                                                                                                           | Summary                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                            | ---                                                                                                                                                                                                                                                                                                                              |
| [AppInfo.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Configs/AppInfo.xcconfig)   | Configure and specify application-level settings for the Runner target, including name, bundle identifier, and copyright information. Defines project metadata to enable smooth creation of Flutter projects using this configuration template. Establishes foundation for building mobile applications with specified features. |
| [Debug.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Configs/Debug.xcconfig)       | Optimizing macOS Runner Configuration This configuration file refines settings for macOS debugging sessions in the Runner application. It inherits and enhances settings from a parent configuration, ensuring compatibility with Flutters development environment and enforcing warnings configurations for robust builds.      |
| [Warnings.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Configs/Warnings.xcconfig) | Enable Warning Flags**Configures various compiler and linker warnings for a macOS project, ensuring thorough analysis and minimizing errors by setting flags for warning on conditional uninitialized variables and more. Ensures adherence to coding standards and best practices.                                              |
| [Release.xcconfig](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Configs/Release.xcconfig)   | Configure the project for release mode by incorporating necessary configurations from Flutter and warning settings to ensure smooth compilation and debugging on macOS.                                                                                                                                                          |

</details>

<details closed><summary>macos.Runner.Base.lproj</summary>

| File                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [MainMenu.xib](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Base.lproj/MainMenu.xib) | This code file is a key component of the MuslimPal repository, responsible for integrating the Me' (Mee) Quran font into the Flutter application. The main purpose of this file is to:* Utilize the Me' font for displaying Arabic text in the app.* Ensure seamless integration with other fonts and design elements.**Critical Features:**This file incorporates several critical features, including:1. Font management: Handles the inclusion and use of various fonts, specifically the Me' Quran font.2. Design consistency: Maintains uniformity in the app's UI by leveraging the same font throughout.3. Localization support: Incorporates functionality for displaying Arabic text, supporting users' linguistic needs.**In Context with Parent Repository Architecture:**This file works in concert with other components within the repository to provide a comprehensive and polished experience. It aligns with the repository's architecture by:* Staying within the Flutter ecosystem while utilizing third-party fonts.* Incorporating necessary files and structures, like fonts, for effective deployment on both Android and iOS platforms. |

</details>

<details closed><summary>macos.Runner.Assets.xcassets.AppIcon.appiconset</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [Contents.json](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json) | Define Icons for macOS Applications-----------------------------------Provide various sizes and resolutions of app icons to ensure seamless integration with the operating system's interface and meet branding consistency across different platforms.Configure icons to be used as the application icon, splash image, or in-app icons, ensuring a visually appealing representation of your brand identity on users Mac devices. |

</details>

<details closed><summary>macos.Runner.xcworkspace.xcshareddata</summary>

| File                                                                                                                                          | Summary                                                                                                                                                                                                                               |
| ---                                                                                                                                           | ---                                                                                                                                                                                                                                   |
| [IDEWorkspaceChecks.plist](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist) | Configuring macOS-specific settings is achieved through this file. It enables warnings for 32-bit compatibility, adhering to Apples guidelines for developing native iOS apps on the macos platform within this repository structure. |

</details>

<details closed><summary>macos.Runner.xcodeproj.xcshareddata.xcschemes</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                                                                                          |
| [Runner.xcscheme](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme) | Defines the build, test, and launch scheme for the macos Runner application within Xcode.**RunExecutes the application in Debug mode, enabling testing and debugging functionalities.**TestSpecifies the test configuration, referencing the RunnerTests target for parallelized test execution.**LaunchInitiates a new instance of the application for running and profiling, leveraging LLDB as the debugger and launcher. |

</details>

<details closed><summary>macos.Runner.xcodeproj.project.xcworkspace.xcshareddata</summary>

| File                                                                                                                                                            | Summary                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                                                             | ---                                                                                                                                                                                                                                                                                                          |
| [IDEWorkspaceChecks.plist](https://github.com/a-touman/muslim_pal/blob/master/macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist) | Configure IDL warnings by indicating whether the project should compute mac32bit warnings. This configuration allows developers to control whether warnings about Macintosh 32-bit compatibility are displayed during compilation, providing flexibility for specific use cases or development environments. |

</details>

<details closed><summary>linux.flutter</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [generated_plugin_registrant.cc](https://github.com/a-touman/muslim_pal/blob/master/linux/flutter/generated_plugin_registrant.cc) | Registers Flutter plugins for Linux platform integration. Enables seamless integration of Flutter plugins into the applications core functionality, providing users with an enhanced experience on the Linux operating system.Ensures plugin registration is correctly handled to maintain the application's stability and usability on this platform. Facilitates a smooth execution flow by efficiently managing plugin-related tasks.Maintains consistency in registering plugins, aligning with established best practices within Flutter development standards. Supports a robust application architecture, allowing users to interact confidently with various plugins and features on their Linux device. |
| [generated_plugin_registrant.h](https://github.com/a-touman/muslim_pal/blob/master/linux/flutter/generated_plugin_registrant.h)   | Generate Registration Code for Flutter Plugins on Linux. This file enables registration of Flutter plugins by providing a function fl_register_plugins() to register them with the FlPluginRegistry*. It is crucial for plugin initialization and functionality on Linux systems.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [generated_plugins.cmake](https://github.com/a-touman/muslim_pal/blob/master/linux/flutter/generated_plugins.cmake)               | Configure and link various plugins for the Linux build environment, enabling dynamic plugin loading and bundling required libraries into the binary to ensure smooth functionality and reliability throughout the applications execution lifecycle.                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [CMakeLists.txt](https://github.com/a-touman/muslim_pal/blob/master/linux/flutter/CMakeLists.txt)                                 | Configures build steps for Linux Flutter builds by specifying dependencies and compiling necessary libraries.Establishes required configurations for GTK, Glib, and Gio packages.Includes Flutter Library and tool backend components. Ensures accurate output headers through custom command execution.                                                                                                                                                                                                                                                                                                                                                                                                         |

</details>

<details closed><summary>lib.translations</summary>

| File                                                                                                     | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---                                                                                                      | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| [ar.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/translations/ar.dart)                   | The code file is part of the muslim_pal repository, a Flutter project that aims to provide a customizable Islamic calendar widget.**Key Features:*** Allows users to personalize their Islamic calendar display with various themes and font options.* Supports different fonts for improved readability and aesthetics.**Repository Context:**This code file complements other modules in the repository, which focus on building the Islamic calendar widget with various features such as prayer times, date selection, and customizable layout.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| [en.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/translations/en.dart)                   | The code file is part of the `muslim_pal` repository, a Flutter app project that provides a set of fonts and icons. The critical feature of this code is to manage the display and styling of these fonts, allowing users to easily access and use them in their applications.**Key Achievements:*** **Font Management:** Provides a centralized way to manage the collection of fonts within the repository.* **Easy Integration:** Allows developers to quickly integrate and utilize the provided fonts into their own Flutter apps.* **Customization:** Offers flexibility in terms of font styles, enabling users to tailor their app's visual appearance to suit their needs.**Repository Architecture:**The repository structure is designed to keep the project organized and easily maintainable. It includes folders for assets (fonts, icons), Android development tools (gradle configurations, etc.), and necessary setup files like `README.md`. This well-structured layout promotes clarity and facilitates future extensions or modifications to the codebase. |
| [translation.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/translations/translation.dart) | Implementing translation support enhances app usability.By utilizing Get package translations, Translation class provides language-specific strings for en" and ar languages through keys variable mapping. This facilitates multi-language support for MuslimPal apps across various platforms.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |

</details>

<details closed><summary>lib.routes</summary>

| File                                                                                             | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ---                                                                                              | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| [app_pages.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/routes/app_pages.dart)   | Navigate this codebase reveals a modular routing system, defining application pages as separate entities to ensure maintainable architecture.It achieves a robust page navigation structure by encapsulating page definitions, bindings, and views into reusable components, promoting easy modifications and extensions without affecting other parts of the app.This organizational approach fosters flexibility in adding new features or customizing existing ones within the larger context. |
| [app_routes.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/routes/app_routes.dart) | Navigating is simplified through a standardized route structure established within the codebase. The Routes abstract class and Paths enum define a set of constants representing various app screens, allowing for clean routing configurations across different pages and features.                                                                                                                                                                                                              |

</details>

<details closed><summary>lib.app.utils</summary>

| File                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ---                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [icons.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/utils/icons.dart)                     | Define Icons for Mobile Application=====================================Generate icons for a mobile application using IconData and defining font family and package information in a static class within the app's utils directory. Utilize custom icons with specific character codes to represent different app features, such as clock, rewind, dua, and settings. Ensure compatibility with various devices and platforms.                                        |
| [utils.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/utils/utils.dart)                     | Toast messages are displayed temporarily at the bottom of the screen using Overlay entries, providing an instant visual cue for users. The duration is automatically adjusted based on the system configuration and design principles.The AppLogger utility simplifies logging with the Flutter Logger package, promoting consistency throughout the app.The Toast mechanism facilitates immediate feedback to users through non-disruptive, transient notifications. |
| [constants.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/utils/constants.dart)             | Establishing design consistency is a crucial aspect of the repositorys architecture. The constants file provides essential styles such as gradients, combo box, detail decorations, and typography for the app, ensuring visual coherence across different features and sections. These styles cater to both Arabic and English languages.                                                                                                                            |
| [storage_utility.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/utils/storage_utility.dart) | Store data persistently across app sessions through this utility, utilizing GetStorage for storage management. It enables saving and reading values as well as maps to disk, providing functionality for storing and retrieving application settings.                                                                                                                                                                                                                 |
| [assets.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/utils/assets.dart)                   | Organizing and standardizing assets within the app.Provides centralized access to image paths through the `ImagePaths` class. Similarly, offers a single point of reference for icons with the `IconPaths` class. Streamlines asset management and makes the codebase more maintainable.                                                                                                                                                                              |

</details>

<details closed><summary>lib.app.widgets</summary>

| File                                                                                                            | Summary                                                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                             | ---                                                                                                                                                                                                                                                                                                                                                                                |
| [horizontal_line.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/widgets/horizontal_line.dart) | Creates a visually appealing horizontal line using Flutters Divider widget. Achieves simplicity while emphasizing design consistency across the application, aligning with the parent repositorys emphasis on clean typography and minimalism. Employs AppColors.dividers to maintain branding coherence throughout the interface.                                                 |
| [icon_button.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/widgets/icon_button.dart)         | Enable visually distinct buttons throughout the application via a reusable widget design. This component leverages Flutters SvgPicture feature to display customized icons. Styling consistency is maintained through integration with AppColors and FloatingActionButton configuration. The layout focuses on clean aesthetics with minimal elements displayed within the column. |
| [back_arrow_ar.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/widgets/back_arrow_ar.dart)     | Rotating a back arrow icon is achieved based on the device language being Arabic or not.The function utilizes the ChangeLanguageController to determine if it should apply a rotation transform or keep the icons default appearance, thus catering to multilingual users' experiences.                                                                                            |

</details>

<details closed><summary>lib.app.style</summary>

| File                                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                   | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [text_themes.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/style/text_themes.dart) | Typography styles are implemented through extensions on widgets TextBody, Body, Heading. Customizable font sizes for headings and bodies enable various layout configurations. Pre-defined color schemes and fonts provide flexibility while maintaining consistency throughout the app.                                                                                                                                                                                |
| [app_colors.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/style/app_colors.dart)   | Defines colors for app design, including primary and secondary hues, background shades, and icon tones. Provides color palette consistency across different components and interfaces within the Muslim Pal app.Establishes typography by specifying text colors, further reinforcing visual coherence throughout the user experience. Offers flexibility and structure for future UI adjustments while ensuring a consistent look and feel for the applications users. |
| [style.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/style/style.dart)             | Establishes a unified styling system for the application. Defines custom spacing units and corner radii to enhance visual coherence and consistency throughout the UI. Employs the use of Material Design principles and Flutters built-in widgets to create a seamless user experience.                                                                                                                                                                                |

</details>

<details closed><summary>lib.app.pages.prayer_timings.model</summary>

| File                                                                                                                           | Summary                                                                                                                                                                                                                                                                         |
| ---                                                                                                                            | ---                                                                                                                                                                                                                                                                             |
| [timings_model.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/model/timings_model.dart) | API Data Modeling**The given code snippet defines models for various API entities like `Meta`, `Method`, `Location`, `Params`, `Timings`, and `HijriWeekday`. It includes factory methods to create instances from JSON data and a `toJson` method to serialize the model data. |

</details>

<details closed><summary>lib.app.pages.prayer_timings.binding</summary>

| File                                                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                              |
| [prayer_timings_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/binding/prayer_timings_binding.dart) | Registering Prayer Timings DependencyThis file registers a dependency for the prayer timings page within the Muslim Pal application, allowing the controller to be lazily initialized when requested by Getx.Ensuring PrayerTimingsController instantiation It binds the PrayerTimingsPage to the PrayerTimingsController through Getx bindings. |

</details>

<details closed><summary>lib.app.pages.prayer_timings.widgets</summary>

| File                                                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                       |
| [location_info.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/widgets/location_info.dart)             | Updates User Location Details.Displays a visual representation of user location using an SVG icon and shows corresponding country and city information based on users language settings and geographic location. This widget integrates with other components to provide comprehensive location-based information in the app.                             |
| [reusable_container.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/widgets/reusable_container.dart)   | Displays user interface components for prayer timings, featuring customizable widgets and reusable containers to display various information such as texts, times, and mosque logos. Employs a responsive design that adapts to different screen sizes and languages, facilitating easy navigation and user experience.                                   |
| [notification_item.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/widgets/notification_item.dart)     | Notify users about prayer timings through customizable notification widgets that display text translations and prayer times fetched from the PrayerTimingsController. These reusable widgets support various alignments and styles to match different layout requirements.                                                                                |
| [prayer_timings_icon.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/widgets/prayer_timings_icon.dart) | Render prayer timings icon widget displaying name, time, and bell activity. Utilizes svg icons from asset directory, applying styles for font, color, and size consistency within the app.Relation to Parent Repository: This widget contributes to the overall layout and user experience in the Prayer Timings page by showcasing relevant information. |

</details>

<details closed><summary>lib.app.pages.prayer_timings.repository</summary>

| File                                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                          |
| [remote_services.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/repository/remote_services.dart) | Api.aladhan.com/v1/timings with required parameters to display accurate timings to users, handling errors and exceptions for seamless user experience. Provides crucial functionality within the applications architecture by serving as a bridge between the UI and backend services to render relevant prayer information. |

</details>

<details closed><summary>lib.app.pages.prayer_timings.controller</summary>

| File                                                                                                                                                        | Summary                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                                                         | ---                                                                                                                                                                                                                                                                                                                                                                                                          |
| [prayer_timings_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/controller/prayer_timings_controller.dart) | Update day names and month names using DateFormats EEE and MMMM formats respectively.Fetch data from remoteServices for year, month, day, latitude, and longitude when the widget is initialized.Calculate timings by converting time strings into minutes and comparing with current time to determine before and after prayer times.Display prayers based on calculated timings and update displayed date. |

</details>

<details closed><summary>lib.app.pages.prayer_timings.view</summary>

| File                                                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                     |
| [prayer_timings_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/prayer_timings/view/prayer_timings_view.dart) | Implementing Navigation, Header, Date Navigator, Prayer Timings Container, Notification Section, and Prayer List for Islamic Prayer Times App.The layout is designed to showcase the prayer times with clear labels, notifications, and location information. The navigation allows users to select the date by moving through time in both directions. |

</details>

<details closed><summary>lib.app.pages.ayahDetail.binding</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                                                                                             |
| ---                                                                                                                                    | ---                                                                                                                                                                                                                                                                 |
| [ayahdetail_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/ayahDetail/binding/ayahdetail_binding.dart) | Establishes AyahDetailController instance as a singleton via GetXs dependency injection feature.Injects AyahDetailController into the dependency tree for later usage by AyahDetail pages.Provides binding mechanism to manage controller instances within the app. |

</details>

<details closed><summary>lib.app.pages.ayahDetail.controller</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                              |
| [ayah_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/ayahDetail/controller/ayah_controller.dart) | Maintaining the Ayah Detail pages controller is crucial for handling user interactions. This controller extends GetxController, ensuring seamless integration with Flutter State Management, thereby enabling smooth updates and refreshing UI elements based on changing application state. It plays a key role in keeping the app synchronized and up-to-date. |

</details>

<details closed><summary>lib.app.pages.ayahDetail.view</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                                           | ---                                                                                                                                                                                                                                                                                                        |
| [ayahdetail_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/ayahDetail/view/ayahdetail_view.dart) | Navigates User to Ayah Details**This code creates a detailed view for each ayah (verse) in the app, showcasing its text along with relevant metadata such as Surah and Verse numbers. The layout includes a header and a decorative container with text styles tailored for readability and visual appeal. |

</details>

<details closed><summary>lib.app.pages.calendar.model</summary>

| File                                                                                                     | Summary                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                      | ---                                                                                                                                                                                                                                                                                                                |
| [model.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/calendar/model/model.dart) | Parsees Quran Ayah data into JSON format, making it accessible for further processing and analysis within the Muslim Pal repository.It facilitates seamless integration with existing features by providing a standardized structure for Quran-related information, thereby enhancing the overall user experience. |

</details>

<details closed><summary>lib.app.pages.calendar.binding</summary>

| File                                                                                                                             | Summary                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                              | ---                                                                                                                                                                                                                                                                                              |
| [calendar_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/calendar/binding/calendar_binding.dart) | Initiates page navigation by registering dependencies for the Calendar Page. Defines bindings for CalendarController and ChangeLanguageController instances within the Get instance to facilitate data flow between widgets and controllers. Centralizes control logic for the pages UI display. |

</details>

<details closed><summary>lib.app.pages.calendar.controller</summary>

| File                                                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                  |
| [calendar_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/calendar/controller/calendar_controller.dart) | Manage dates across different calendars with precision using this Calendar Controller.This controller facilitates the conversion between Gregorian and Hijri calendars, providing a seamless user experience.It includes essential functionality for handling date selection, formatting, and translation, catering to diverse language preferences. |

</details>

<details closed><summary>lib.app.pages.calendar.view</summary>

| File                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                             |
| ---                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                 |
| [calendar_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/calendar/view/calendar_view.dart) | Designing the Date Conversion Screen**The `Scaffold` widget is used to wrap the date conversion UI. The screen displays a heading with Hijri Calendar" and allows users to select dates in Hijri calendar system or convert existing dates from Gregorian calendar using text input fields for year, day and month. |

</details>

<details closed><summary>lib.app.pages.home.model</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                                                                                                                                             |
| ---                                                                                                              | ---                                                                                                                                                                                                                                                                                                                                 |
| [quran_model.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/model/quran_model.dart) | Defines Quran Model Structure**The file establishes a comprehensive model for representing Quran-related data, encapsulating various attributes within nested classes to ensure accurate representation and efficient storage of information. This model supports detailed analysis of Quran verses, including editions and surahs. |

</details>

<details closed><summary>lib.app.pages.home.binding</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [home_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/binding/home_binding.dart) | Bind Home Page ControllerThis Dart file binds the Home Controller instance to the Get framework, providing access to the controller's functionality from other parts of the app. It uses Get to manage state and navigate between routes efficiently, improving the app's user experience. By implementing Bindings, this code enables a clean separation of concerns in the codebase architecture, allowing for easier maintenance and scaling. |

</details>

<details closed><summary>lib.app.pages.home.widgets</summary>

| File                                                                                                                         | Summary                                                                                                                                                                                                 |
| ---                                                                                                                          | ---                                                                                                                                                                                                     |
| [home_page_widget.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/widgets/home_page_widget.dart) | Reusable widget creation simplifies layout customizationEffortless transitions to detailed views reduce navigation complexityIntelligent handling of see-more functionality adapts to user preferences. |

</details>

<details closed><summary>lib.app.pages.home.repository</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                                                                                                            |
| ---                                                                                                                           | ---                                                                                                                                                                                                                                                                                |
| [remote_services.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/repository/remote_services.dart) | Retrieve Data Fetches Ayah Randomly. This service fetches random ayah data from the Quran API based on users selected language. It generates a unique ayah number and retrieves its details from the API, returning it as a QuranModel instance for display or further processing. |

</details>

<details closed><summary>lib.app.pages.home.controller</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                          |
| [home_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/controller/home_controller.dart) | Facilitate Quran Content Retrieval**This Dart controller class retrieves Quran content through an API call using RemoteServices, then populates and exposes the data to the user via observables. The controller fetches and formats relevant data such as surah numbers, verse numbers, text, and line count statistics, supporting app page functionality. |

</details>

<details closed><summary>lib.app.pages.home.view</summary>

| File                                                                                                        | Summary                                                                                                                                                                                                                                                                            |
| ---                                                                                                         | ---                                                                                                                                                                                                                                                                                |
| [home_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/home/view/home_view.dart) | Provide Home Page OverviewThe home view page showcases essential features of the Muslim Pal application, including the verse of the day, prayer timings, calendar converter, duaa, and settings. It presents these functionalities in an interactive way with widgets and buttons. |

</details>

<details closed><summary>lib.app.pages.duaa.binding</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                                                                                                         |
| [duaa_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/binding/duaa_binding.dart) | Establishing bindings for the Duaa page involves injecting a DuaaController instance into the pages dependency chain. The binding process uses Get to register and manage dependencies for efficient data flow within the application. This step is crucial in facilitating communication between views and business logic. |

</details>

<details closed><summary>lib.app.pages.duaa.widgets</summary>

| File                                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [duaa_row.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaa_row.dart)                       | Configures the layout for a dua row widget by rendering two expanded containers side by side, with each container containing an icon, name, and dua page. This implementation is consistent with the overall architecture and style of the MuslimPal app.                                                                                                                                                                                                                                                                                                                                                                            |
| [duaa_box_simple.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaa_box_simple.dart)         | Delivers simple Duaa content boxes.Provides a basic UI component that displays given Duaa content in a colored container with rounded corners.Complies with the apps design language by utilizing standard colors and spacing guidelines, ensuring visual consistency throughout the application.                                                                                                                                                                                                                                                                                                                                    |
| [row_scroll_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/row_scroll_view.dart)         | Activating User Interface is enabled through this file, RowScrollView, which implements a scrolling view with dynamic content and customizable design elements such as colors, styles, and lengths, tightly coupled with the DuaaController for seamless data integration and rendering.                                                                                                                                                                                                                                                                                                                                             |
| [duaa_bank.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaa_bank.dart)                     | Summary**The `fonts` directory within the MuslimPal repository is designed to store and manage font files for use across various app configurations (Android, iOS). Its primary objective is to ensure consistent typography throughout the mobile application. This component plays a crucial role in maintaining the app's visual identity by providing access to carefully curated and licensed fonts.**Key Features:*** Centralized storage of font assets* Compatibility with Android and iOS platforms through careful font selection* Easy integration into the app, enabling consistent typography across all configurations |
| [counter_widget.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/counter_widget.dart)           | Increase counters with adjustable values using widgets, ensuring internationalization support through ChangeLanguageController and utilizing SVG icons from Assets and IconPaths to enhance the visual experience.Maintaining consistency with the repository's styling conventions, specifically FontsFamily.effraTrialBold and AppTextColors.headlines, for a unified look and feel is also crucial.This widget is a building block within the MuslimPal app, where users can increment or decrement values while navigating different settings, reinforcing user-friendly interaction.                                            |
| [duaa_box.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaa_box.dart)                       | Provide and Display Duaa Boxes on Screen-------------------------------------------This feature presents users with interactive Duaa boxes showcasing prayer texts, along with their respective categories and indices. Upon tapping a box, users are taken to a detailed information page about the selected Du'aa, offering in-depth insight into its content.                                                                                                                                                                                                                                                                     |
| [duaa_icon_container.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaa_icon_container.dart) | Navigating through the repository structure, this file, `duaa_icon_container.dart`, orchestrates the presentation of duaas with its respective icon containers on the apps pages. It utilizes the DuaaController to manage data flow and leverages Flutter widgets for seamless user interactions.                                                                                                                                                                                                                                                                                                                                   |
| [duaas_list.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/widgets/duaas_list.dart)                   | Initiates Translation of Duaas ListThis file provides a widget that displays a list of Duaas (Islamic prayers) along with their translations and references. The list is dynamically created based on input parameters, facilitating easy integration into the applications user interface. This code enhances the Muslim Pal app's features.                                                                                                                                                                                                                                                                                        |

</details>

<details closed><summary>lib.app.pages.duaa.screens</summary>

| File                                                                                                                       | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                        | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [daily_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/daily_page.dart)           | Displays daily Duaas on screen. Uses DuaaController for state management, displaying user interface components like DuaaBox and DuaaBank. Fetches daily duaas from DuaaBank instance, rendering them in a scrollable list with headers and footers. Provides a BackArrow widget to navigate back.                                                                                                                                                                                                                                                                    |
| [duaa_info.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/duaa_info.dart)             | Displaying Duaa InformationThis feature shows detailed information about a specific duaas, including its text, translation, reference, and counter widget for tracking reads. It supports multiple categories (daily, evening, night, morning, before study, after study, before travel, during travel, and after travel).                                                                                                                                                                                                                                           |
| [night_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/night_page.dart)           | Rendering night prayers with a user-friendly interface is achieved through NightPage, a screen within the MuslimPal apps Duaa module. This page displays daily night prayers and provides easy navigation between categories via a clean design.                                                                                                                                                                                                                                                                                                                     |
| [studying_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/studying_page.dart)     | Activating Duaa Content for Studying Pages===========================================This file implements a user interface to display duaas related to studying, categorized as before or after studying activities. It fetches and displays selected duas from remote services, allowing users to switch between the two study categories seamlessly.The code organizes the content in a scrollable widget, presenting a list of selected duaas with adjustable spacing between them. It employs GetX state management for efficient data updates and interactions. |
| [evening_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/evening_page.dart)       | Displaying Evening Duaas on screen renders a list view of duaas for evening category. The screen comprises a custom header with navigation back button, heading title and list of duaas from the controller. It utilizes a singleChildScrollView to allow scrolling through long list.                                                                                                                                                                                                                                                                               |
| [morning_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/morning_page.dart)       | Serve Up Duaa ContentMorningPage showcases a list of morning duaas in a sleek, user-friendly format. It leverages GetX functionality to display duaa content dynamically. The page is designed to accommodate a variety of screen sizes, providing an optimal viewing experience for users.                                                                                                                                                                                                                                                                          |
| [travelling_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/screens/travelling_page.dart) | Customizable section headers-Responsive design-Dynamic listing of Duaas based on selected time periodThis page caters to the needs of users seeking specific prayer guidance during travel.                                                                                                                                                                                                                                                                                                                                                                          |

</details>

<details closed><summary>lib.app.pages.duaa.controller</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                |
| ---                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                    |
| [duaa_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/controller/duaa_controller.dart) | Tracks user selection for prayer times within the Muslim Pal app architecture. Implements a controller utilizing the GetxState Manager package to manage states and business logic, facilitating navigation and dynamic updates based on user inputs and preferences. Enhances the overall user experience with robust and efficient state management. |

</details>

<details closed><summary>lib.app.pages.duaa.view</summary>

| File                                                                                                        | Summary                                                                                                                                                                                             |
| ---                                                                                                         | ---                                                                                                                                                                                                 |
| [duaa_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/duaa/view/duaa_view.dart) | Provides Duaa Selection Experience**This view enables users to select from various duaa categories (Daily, Evening, Night, etc.) presented in a scrolling list with corresponding icons and titles. |

</details>

<details closed><summary>lib.app.pages.AyahDetail.binding</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                                                                                         |
| ---                                                                                                                                    | ---                                                                                                                                                                                                                                                             |
| [ayahdetail_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/AyahDetail/binding/ayahdetail_binding.dart) | Bind dependencies injects AyahDetailController instance into applications dependency graph. This enables communication between controller and views within Ayah Detail page, facilitating data flow and manipulation throughout the MuslimPal app architecture. |

</details>

<details closed><summary>lib.app.pages.AyahDetail.controller</summary>

| File                                                                                                                                | Summary                                                                    |
| ---                                                                                                                                 | ---                                                                        |
| [ayah_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/AyahDetail/controller/ayah_controller.dart) | Simplifies state management, facilitates navigation between related views. |

</details>

<details closed><summary>lib.app.pages.AyahDetail.view</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                               |
| ---                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                   |
| [ayahdetail_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/AyahDetail/view/ayahdetail_view.dart) | Transforms users Ayah (Quranic verse) experience by displaying it within a detailed view, offering contextual information like surah number, verse number, and verse text. Integrates with the Quran controller to manage ayat data. Displays Verse of the day' on a floating action button, facilitating navigation. |

</details>

<details closed><summary>lib.app.pages.settings.services</summary>

| File                                                                                                              | Summary                                                                                                                                                                                                                                                                 |
| ---                                                                                                               | ---                                                                                                                                                                                                                                                                     |
| [location.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/services/location.dart) | Accurately Determine User Location.This feature fetches the devices location using the geolocator package, then uses geocoding to retrieve the country, city, and state. It updates a change language controller with this information for later use in prayer timings. |

</details>

<details closed><summary>lib.app.pages.settings.binding</summary>

| File                                                                                                                             | Summary                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                              | ---                                                                                                                                                                                                                                                                                         |
| [settings_binding.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/binding/settings_binding.dart) | Initialize settings page bindings by implementing Bindings contract from GetX package. Define dependencies for HomeController and ChangeLanguageController, which are lazily initialized with Get.lazyPut() to facilitate runtime registration and removal of bindings without app restart. |

</details>

<details closed><summary>lib.app.pages.settings.widgets</summary>

| File                                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                                |
| [languages_list.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/widgets/languages_list.dart) | Declaring Languages facilitates selection through RadioListTiles for available languages. This feature leverages the ChangeLanguageController to update selected language values and navigates to HomeView upon selection. The component is integrated within the apps settings widget, providing users with a convenient way to change the applications language. |

</details>

<details closed><summary>lib.app.pages.settings.screens</summary>

| File                                                                                                                                     | Summary                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ---                                                                                                                                      | ---                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [location_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/screens/location_page.dart)               | Activate Location Settings to allow GPS access, enabling the app to fetch prayer timings based on user location. This page also allows manual selection of location for more control over timings. It utilizes Flutter and Get packages for development.This screen utilizes custom widgets for styling, including back arrow and text themes, and integrates with location services to determine current user position. |
| [languages_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/screens/languages_page.dart)             | Display languages options to users, allowing them to select their preferred language for the application. The Languages Page utilizes GetView with ChangeLanguageController, showcasing a list of supported languages in a customizable and responsive format.                                                                                                                                                           |
| [manual_location_page.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/screens/manual_location_page.dart) | A user-friendly interface with a country picker-Ability to select state and city options within selected country-Automatic update of country, state, and city fields upon selection-Confirmation button for submitting updated location detailsThis page facilitates seamless user input, providing a clear pathway to confirm location details.                                                                         |

</details>

<details closed><summary>lib.app.pages.settings.controller</summary>

| File                                                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                                                     | ---                                                                                                                                                                                                                                                                                                         |
| [change_language_controller.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/controller/change_language_controller.dart) | Modifying Language Settings**Changes language settings by retrieving device locale and updating storage for future use. Allows users to change languages with options for English and Arabic. Fetches new data when the user updates the language setting, facilitating seamless navigation across locales. |

</details>

<details closed><summary>lib.app.pages.settings.view</summary>

| File                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                                  |
| [settings_view.dart](https://github.com/a-touman/muslim_pal/blob/master/lib/app/pages/settings/view/settings_view.dart) | Navigate Settings Page displays user-configurable settings features that enable users to modify their language preferences, access languages list page, and select location, providing flexibility and customization options.This screen is accessible through the main menu, facilitating quick adjustments to user preferences and streamlining navigation within the application. |

</details>

<details closed><summary>android.app</summary>

| File                                                                                        | Summary                                                                                                                                                                                                                                                                                                                                                             |
| ---                                                                                         | ---                                                                                                                                                                                                                                                                                                                                                                 |
| [build.gradle](https://github.com/a-touman/muslim_pal/blob/master/android/app/build.gradle) | Configures Android Application with Flutter Build ConfigurationAutomates build settings for Android app development using Flutter SDK, allowing developers to manage namespace, compileSdkVersion, and targetSdkVersion through Gradle configuration.Integrates Kotlin Android plugin and Flutter Gradle Plugin.Provides customizable source compatibility options. |

</details>

<details closed><summary>android.app.src.main.kotlin.com.example.muslim_pal</summary>

| File                                                                                                                                     | Summary                                                                                                                                                                                                         |
| ---                                                                                                                                      | ---                                                                                                                                                                                                             |
| [MainActivity.kt](https://github.com/a-touman/muslim_pal/blob/master/android/app/src/main/kotlin/com/example/muslim_pal/MainActivity.kt) | Facilitating a cross-platform app development environment. This specific Kotlin file (MainActivity.kt) achieves platform initialization, ensuring seamless Flutter experience across various operating systems. |

</details>

<details closed><summary>windows.runner</summary>

| File                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| [runner.exe.manifest](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/runner.exe.manifest) | Manifests Windows Specific Requirements for Runner.exe File.Establishes compatibility settings for Windows operating systems from Vista (7) to latest versions (10, 11). Defines DPI awareness and supports specific OS Ids for each Windows version, ensuring seamless functionality across all supported platforms.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [flutter_window.cpp](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/flutter_window.cpp)   | Create an immersive Flutter window experience on Windows platforms, utilizing custom fonts from the MuslimPal repositorys assets.Ensure seamless integration with existing plugins by using generated registrant classes, allowing for smooth and efficient plugin registration. Leverage Flutter's engine to enable dynamic window content and message handling capabilities.Utilize C++11 features for maximum performance in a native context.Register multiple plugins via generated registrant functions for effortless addition of new features and functionalities within the application. Handle WM_FONTCHANGE events properly to ensure correct font behavior and visual consistency throughout the entire system. Adhere to the conventional Flutter startup path for surface creation and destruction, guaranteeing minimal resource usage while achieving maximum efficiency in execution.Employ event-driven programming practices to ensure timely notifications and effortless communication between different components of the program.Develop an adaptive architecture that scales efficiently with various user interactions and activities, yielding a highly responsive and interactive experience.Minimize memory usage while achieving high performance levels by leveraging Flutter's just-in-time compiler for seamless C++ code execution. Allow Flutter to execute complex UI and widget hierarchies using its own engine without compromising system resource utilization or affecting overall system stability and security. |
| [flutter_window.h](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/flutter_window.h)       | Hosts Flutter views on Windows platforms, utilizing Win32 windowing system for native integration with Dart projects. Provides a window class, `FlutterWindow`, to create and manage instances hosting Flutter views, ensuring seamless integration between desktop applications and web technologies. Ensures native-like user experience while running Flutter apps on Windows.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [win32_window.h](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/win32_window.h)           | Establishes a high DPI-aware Win32 window class abstraction for custom rendering and input handling, providing methods for creation, showing, destroying, setting child content, and quitting on close, while automatically responding to changes in DPI and system theme updates.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| [main.cpp](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/main.cpp)                       | Initiating Window CreationThe `main.cpp` file orchestrates Flutter window creation for the Windows platform within the repositorys architecture. It integrates Dart project initialization, command-line argument parsing, and event handling to establish a functional desktop application environment.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [utils.h](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/utils.h)                         | Redirects process output for the Flutter library by creating a console that captures stdout and stderr from the runner. Utilizes Unicode encoding conversions to manage UTF-16 and UTF-8 encoded strings across Windows and other platforms seamlessly within the codebase. Enhances command-line argument processing in native C++ for a seamless development experience.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [resource.h](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/resource.h)                   | Define and configure the Windows Runner resources, including icons, menus, and other system-level items, leveraging the Microsoft Visual C++ generated file for efficient resource management. Ensure correct icon display and menu setup for seamless user experience.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [utils.cpp](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/utils.cpp)                     | Attaches a console to the Windows platform by creating a new process with redirected output streams. Utilizes command line arguments conversion from UTF-16 to UTF-8 for Flutter Engine compatibility, supporting multi-byte character sets and handling potential errors gracefully.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [win32_window.cpp](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/win32_window.cpp)       | Scale factors are utilized for DPI awareness by multiplying source values with the scale factor calculated from the monitor DPI.The EnableNonClientDpiScaling API is used to enable DPI support if available.WindowClassRegistrar manages window class registration, unregistering it when there are no instances.The Win32Window class handles Win32 messages, enabling full DPI support and updating themes accordingly.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [Runner.rc](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/Runner.rc)                     | Establishing Application IconDefines application icon and version information for MuslimPal.-Creates an IDI_APP_ICON resource from resources\app_icon.ico.-Specifies the Flutter version as a numeric and string value, with fallbacks if not defined. This section enables the consistent representation of application icon across all systems, alongside providing essential versioning information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [CMakeLists.txt](https://github.com/a-touman/muslim_pal/blob/master/windows/runner/CMakeLists.txt)           | Configure and build settings for the Flutter application target are established here, enabling developers to create an executable with standard set configurations and ensuring compatibility across various platforms.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

</details>

<details closed><summary>windows.flutter</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [generated_plugin_registrant.cc](https://github.com/a-touman/muslim_pal/blob/master/windows/flutter/generated_plugin_registrant.cc) | Registers plugins for the GeolocatorWindows package in Windows environments. This function is essential for the overall architecture as it enables plugin registration, which facilitates feature availability and user functionality in the application.                                                                                                                                                                                                                           |
| [generated_plugin_registrant.h](https://github.com/a-touman/muslim_pal/blob/master/windows/flutter/generated_plugin_registrant.h)   | GenerateFlutterPlugins registers essential plugins for the application on Windows.RegistersFlutterplugins utilizesflutterPluginRegistryto register required plugins, enabling the app to run seamlessly with its intended functionalities on this platform. This registration is crucial for the app's stability and performance. Key features of RegisterPlugins include registering necessary plugins for smooth app execution, allowing users to enjoy a hassle-free experience. |
| [generated_plugins.cmake](https://github.com/a-touman/muslim_pal/blob/master/windows/flutter/generated_plugins.cmake)               | Configures Flutter plugin dependencies for Windows builds.Lists installed plugins and targets their shared libraries, adding them to the binary's link libraries.Bundles necessary plugin libraries into the final application executable.                                                                                                                                                                                                                                          |
| [CMakeLists.txt](https://github.com/a-touman/muslim_pal/blob/master/windows/flutter/CMakeLists.txt)                                 | Configure and Build Flutter FrameworkEnables configuration and compilation steps for Windows-specific build processes.Provides interface and library settings, including linking dependencies and source files for the wrapper and runner applications.Uses CMakeLists to define build requirements and scripts.                                                                                                                                                                    |

</details>

---

## 🚀 Getting Started

**System Requirements:**

* **Dart**: `version x.y.z`

### ⚙️ Installation

<h4>From <code>source</code></h4>

> 1. Clone the muslim_pal repository:
>
> ```console
> $ git clone https://github.com/a-touman/muslim_pal
> ```
>
> 2. Change to the project directory:
> ```console
> $ cd muslim_pal
> ```
>
> 3. Install the dependencies:
> ```console
> $ pub get
> ```

### 🤖 Usage

<h4>From <code>source</code></h4>

> Run muslim_pal using the command below:
> ```console
> $ flutter run
> ```

### 🧪 Tests

> Run the test suite using the command below:
> ```console
> $ dart test
> ```

---

## 🛠 Project Roadmap

- [X] `► INSERT-TASK-1`
- [ ] `► INSERT-TASK-2`
- [ ] `► ...`

---

## 🤝 Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Report Issues](https://github.com/a-touman/muslim_pal/issues)**: Submit bugs found or log feature requests for the `muslim_pal` project.
- **[Submit Pull Requests](https://github.com/a-touman/muslim_pal/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github.com/a-touman/muslim_pal/discussions)**: Share your insights, provide feedback, or ask questions.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/a-touman/muslim_pal
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="center">
   <a href="https://github.com{/a-touman/muslim_pal/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=a-touman/muslim_pal">
   </a>
</p>
</details>

---

## 🎗 License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

## 🔗 Acknowledgments

- List any resources, contributors, inspiration, etc. here.

[**Return**](#-overview)

---
