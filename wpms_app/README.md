# wpms_app

WPMS (Workplace Management System) — Flutter application

## Overview

`wpms_app` is a Flutter-based mobile application scaffolded to manage workplace-related workflows. It contains platform-specific integrations for Android, iOS, web and desktop targets and a modular `lib/` layout for screens and widgets.

## Requirements

- Flutter SDK (stable channel) — https://docs.flutter.dev/get-started/install
- Dart (bundled with Flutter)
- Android SDK / Xcode (for platform builds)

## Setup

1. Ensure Flutter is installed and on your PATH.
2. From the project root, fetch packages:

```bash
flutter pub get
```

3. (Optional) If using platform tooling on Windows/macOS, ensure the appropriate SDKs are installed and configured.

## Run (development)

- Run on connected device or emulator:

```bash
flutter run
```

- Run for a specific platform (android, ios, web):

```bash
flutter run -d <device-id-or-platform>
```

## Build

- Android (APK):

```bash
flutter build apk --release
```

- iOS (archive via Xcode):

```bash
flutter build ios --release
```

- Web:

```bash
flutter build web
```

## Testing

Run the test suite with:

```bash
flutter test
```

## Contributing

- Create a feature branch: `git checkout -b my-feature`
- Commit changes with meaningful messages.
- Push your branch to the remote: `git push origin my-feature`
- Open a Pull Request targeting `dev` and request review.

If you need to update `dev` locally before merging, keep it up to date:

```bash
git fetch origin
git checkout dev
git pull origin dev
```

Then merge or rebase your branch onto `dev`:

```bash
git checkout my-feature
git merge dev
# or
git rebase dev
```

## Notes

- See the `lib/` folder for the app entrypoint (`lib/main.dart`) and screen/widget organization.
- Keep platform-specific secrets out of source control; use environment variables or secure storage.

## License

This repository does not include a license file. Add a `LICENSE` if you intend to share this project publicly.

