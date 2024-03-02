// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum DesignSystemKitDevAsset {
  public enum ColorAsset {
  public static let graySacleB = DesignSystemKitDevColors(name: "GraySacle.B")
    public static let grayScaleW = DesignSystemKitDevColors(name: "GrayScale.W")
    public static let grayScale100 = DesignSystemKitDevColors(name: "GrayScale100")
    public static let grayScale200 = DesignSystemKitDevColors(name: "GrayScale200")
    public static let grayScale300 = DesignSystemKitDevColors(name: "GrayScale300")
    public static let grayScale400 = DesignSystemKitDevColors(name: "GrayScale400")
    public static let grayScale500 = DesignSystemKitDevColors(name: "GrayScale500")
    public static let grayScale600 = DesignSystemKitDevColors(name: "GrayScale600")
    public static let primaryBlack37 = DesignSystemKitDevColors(name: "PrimaryBlack37")
    public static let primaryGreen = DesignSystemKitDevColors(name: "PrimaryGreen")
  }
  public enum ImageAsset {
  public static let imgArrowLeftGray = DesignSystemKitDevImages(name: "Img.Arrow.Left.Gray")
    public static let imgBackgroundGradientGreenDot = DesignSystemKitDevImages(name: "Img.Background.Gradient.Green.Dot")
    public static let imgCircleCheckRoundGray = DesignSystemKitDevImages(name: "Img.CircleCheck.Round.Gray")
    public static let imgCircleCheckRoundGreen = DesignSystemKitDevImages(name: "Img.CircleCheck.Round.Green")
    public static let imgOpeaceGreenLogo = DesignSystemKitDevImages(name: "Img.Opeace.Green.Logo")
    public static let imgOpeaceSplashLogo = DesignSystemKitDevImages(name: "Img.Opeace.Splash.Logo")
    public static let imgBackgroundGradientGreenDot = DesignSystemKitDevImages(name: "img.background.gradient.green.dot")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class DesignSystemKitDevColors {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  public private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if canImport(SwiftUI)
  private var _swiftUIColor: Any? = nil
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public private(set) var swiftUIColor: SwiftUI.Color {
    get {
      if self._swiftUIColor == nil {
        self._swiftUIColor = SwiftUI.Color(asset: self)
      }

      return self._swiftUIColor as! SwiftUI.Color
    }
    set {
      self._swiftUIColor = newValue
    }
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension DesignSystemKitDevColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: DesignSystemKitDevColors) {
    let bundle = DesignSystemKitDevResources.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Color {
  init(asset: DesignSystemKitDevColors) {
    let bundle = DesignSystemKitDevResources.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct DesignSystemKitDevImages {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = DesignSystemKitDevResources.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension DesignSystemKitDevImages.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the DesignSystemKitDevImages.image property")
  convenience init?(asset: DesignSystemKitDevImages) {
    #if os(iOS) || os(tvOS)
    let bundle = DesignSystemKitDevResources.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: DesignSystemKitDevImages) {
    let bundle = DesignSystemKitDevResources.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: DesignSystemKitDevImages, label: Text) {
    let bundle = DesignSystemKitDevResources.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: DesignSystemKitDevImages) {
    let bundle = DesignSystemKitDevResources.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:enable all
// swiftformat:enable all
