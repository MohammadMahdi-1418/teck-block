/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/2710222.png
  AssetGenImage get a2710222 => const AssetGenImage('assets/icons/2710222.png');

  /// File path: assets/icons/hashtag.png
  AssetGenImage get hashtag => const AssetGenImage('assets/icons/hashtag.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/microphone.png
  AssetGenImage get microphone =>
      const AssetGenImage('assets/icons/microphone.png');

  /// File path: assets/icons/par.png
  AssetGenImage get par => const AssetGenImage('assets/icons/par.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    a2710222,
    hashtag,
    home,
    microphone,
    par,
    user,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Screenshot (57).png
  AssetGenImage get screenshot57 =>
      const AssetGenImage('assets/images/Screenshot (57).png');

  /// File path: assets/images/banner_test.png
  AssetGenImage get bannerTest =>
      const AssetGenImage('assets/images/banner_test.png');

  /// File path: assets/images/hashtag.png
  AssetGenImage get hashtag => const AssetGenImage('assets/images/hashtag.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [screenshot57, bannerTest, hashtag, logo];
}

class $AssetsPadckastMaghalehGen {
  const $AssetsPadckastMaghalehGen();

  /// File path: assets/padckast_maghaleh/padi-kast.png
  AssetGenImage get padiKast =>
      const AssetGenImage('assets/padckast_maghaleh/padi-kast.png');

  /// File path: assets/padckast_maghaleh/radio-codeyad.png
  AssetGenImage get radioCodeyad =>
      const AssetGenImage('assets/padckast_maghaleh/radio-codeyad.png');

  /// File path: assets/padckast_maghaleh/ramzon.png
  AssetGenImage get ramzon =>
      const AssetGenImage('assets/padckast_maghaleh/ramzon.png');

  /// File path: assets/padckast_maghaleh/tecknost.png
  AssetGenImage get tecknost =>
      const AssetGenImage('assets/padckast_maghaleh/tecknost.png');

  /// List of all assets
  List<AssetGenImage> get values => [padiKast, radioCodeyad, ramzon, tecknost];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsPadckastMaghalehGen padckastMaghaleh =
      $AssetsPadckastMaghalehGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
