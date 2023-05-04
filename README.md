# katai

# Tests:
1. Need to be run as flutter test --no-sound-null-safety
# Setup steps:

Android:
1. Setup firebase from https://console.firebase.google.com/project/bicycle-riders-app-v2/overview:
    a. Download config file to android/app/google-services.json
    a1. Add debug SHA1 key + Add second debug SHA1 key
    b. Add classpath 'com.google.gms:google-services:4.3.4' to android/build.gradle dependencies
    c. Add plugin 'apply plugin: 'com.google.gms.google-services' to android/app/build.gradle
    d. Import firebase BOM and firebase-analytics-ktx to android/app/build.gradle
    e. Start App
2. Install provider with AppState
3. Install DIO for HTTP requests
4. https://pub.dev/packages/sign_in_with_apple (Apple sign in) (NOT WORKING ON ANDROID WITHOUT WEB SERVER)
    a. Follow guides and setup firebase console with 100500 keys
5. Add firebase pub dependencies
6. Crashlytics

IOS:
1. Uncomment Podfile # platform:ios string and change to 12.0
2. Setup Firebase (add pod 'Firebase/Analytics' and Auth to Podfile) (additional - https://firebase.google.com/docs/ios/setup#available-pods)
3. Added Sign in with Apple capability
4. Added google-info.plist (+ added from xcode via Add files)
5. Copied to supported url schemas from reverse client id from google-info.plist
6. Improve ios build time https://firebase.flutter.dev/docs/overview#initializing-flutterfire