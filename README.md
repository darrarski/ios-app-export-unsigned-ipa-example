# iOS App - export unsigned IPA

This repository contains an Xcode project created from default template, and a bash script that archives and exports unsinged IPA of the app.

Before running the script it may be required to update `teamID` in `ExportOptions.plist` and ensure you have a valid distribution certificate available on your machine.

Run the script:

```sh
$ ./build.sh
```

On Xcode 15.3, the script works correctly. Archive is created, and then unsigned IPA is saved into `export` directory.

On Xcode 15.4, the script fails with error:

```
./build.sh: line 27: 32790 Segmentation fault: 11  xcodebuild -exportArchive -archivePath "$ARCHIVE_PATH" -exportPath "$EXPORT_PATH" -exportOptionsPlist "$EXPORT_OPTIONS_PLIST" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO CODE_SIGN_ENTITLEMENTS="" CODE_SIGN_IDENTITY=""
```
