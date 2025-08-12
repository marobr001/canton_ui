# Canton UI Migration Guide

## Flutter Version Compatibility

This package has been updated to be compatible with Flutter 3.10.0 and above. If you're experiencing compatibility issues, follow these steps:

## Required Updates

### 1. Update Flutter SDK
Make sure you're using Flutter 3.10.0 or higher:
```bash
flutter upgrade
flutter --version
```

### 2. Update Your Project's pubspec.yaml

Update your project's `pubspec.yaml` with these minimum constraints:

```yaml
environment:
  sdk: '>=3.0.0 <4.0.0'
  flutter: '>=3.10.0'
```

### 3. Update Dependencies

Update your project dependencies to compatible versions:

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # Update these in your project
  flutter_riverpod: ^2.4.0
  flutter_slidable: ^3.0.0
  flutter_spinkit: ^5.2.0
  flutter_svg: ^2.0.9
  figma_squircle: ^0.5.4
  font_awesome_flutter: ^10.6.0
  cupertino_icons: ^1.0.6

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
```

### 4. Clean and Get Dependencies

After updating your `pubspec.yaml`:

```bash
flutter clean
flutter pub get
```

## Breaking Changes Fixed

### CardTheme → CardThemeData
- `CardTheme` has been replaced with `CardThemeData` in newer Flutter versions
- This has been fixed in both light and dark themes

### figma_squircle Compatibility
- Updated to version 0.5.4 which is compatible with newer Flutter versions
- Fixes the `hashValues` method deprecation issue

## Troubleshooting

If you still encounter issues:

1. **Clear cache and rebuild:**
   ```bash
   flutter clean
   flutter pub cache clean
   flutter pub get
   ```

2. **Check Flutter version compatibility:**
   ```bash
   flutter doctor
   ```

3. **Update all dependencies:**
   ```bash
   flutter pub upgrade
   ```

## Support

If you continue to experience issues, please:
1. Check that your Flutter version is 3.10.0 or higher
2. Ensure all your project dependencies are updated to compatible versions
3. Clear your pub cache and rebuild the project

## Version History

- **v1.4.1**: Updated for Flutter 3.10.0+ compatibility
  - Fixed CardTheme → CardThemeData migration
  - Updated figma_squircle to 0.5.4
  - Updated all dependencies to compatible versions 