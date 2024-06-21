#!/bin/bash

ARCHIVE_PATH="DemoApp.xcarchive"

xcodebuild clean archive \
  -workspace DemoApp.xcworkspace \
  -scheme DemoApp \
  -configuration Release \
  -sdk "iphoneos" \
  -archivePath "$ARCHIVE_PATH" \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGN_ENTITLEMENTS="" \
  CODE_SIGN_IDENTITY=""

EXPORT_PATH="export"
mkdir -p $EXPORT_PATH
EXPORT_OPTIONS_PLIST="ExportOptions.plist"

xcodebuild -exportArchive \
  -archivePath "$ARCHIVE_PATH" \
  -exportPath "$EXPORT_PATH" \
  -exportOptionsPlist "$EXPORT_OPTIONS_PLIST" \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGN_ENTITLEMENTS="" \
  CODE_SIGN_IDENTITY=""
