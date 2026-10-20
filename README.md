# test-selection-fixture-flutter

Flutter fixture for trying the Bitrise [Test Selection step](https://github.com/bitrise-steplib/bitrise-step-test-selection) end to end.
The Bitrise app uses the config stored on bitrise.io; `bitrise.yml` here is a mirror of it.

Packages (path dependencies): `packages/core` ← `packages/networking` ← `packages/feature` ← `app`, one test file each.
`core` and `networking` have plain `test()`s, `feature` and `app` have widget tests.

Workflows:
- `full_tests` – baseline, `flutter test` in every package.
- `selective_tests` – Test Selection + Flutter Test (`test-selection` branch) with `on_empty_selection: skip`; pushes trigger this.

Scenario branches: `try/core`, `try/networking`, `try/feature-tests`, `try/app`, `try/lock` (the app's `pubspec.lock`, a full-run rule).
