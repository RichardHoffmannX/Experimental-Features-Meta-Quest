# Experimental-Features-Meta-Quest
To enable Experimental Features to run on your Meta Quest, you’ll need put your device in Experimental Mode by using the following ADB command: adb shell setprop debug.oculus.experimentalEnabled 1

Links:
https://developers.meta.com/horizon/documentation/native/android/mobile-experimental-features/
https://developers.meta.com/horizon/documentation/unity/unity-mr-utility-kit-qrcode-detection


Please read the top-level Experimental Features documentation carefully before using experimental features in your app.
To enable support for experimental features in your app, add the following line to AndroidManifest.xml (as a child of the <manifest> section):

```
<uses-feature android:name="com.oculus.experimental.enabled" />
```

To enable Experimental Features to run on your Meta Quest, you’ll need put your device in Experimental Mode by using the following ADB command:

```
adb shell setprop debug.oculus.experimentalEnabled 1
```
To disable, replace the 1 with 0. Note that this resets to 0 on reboot.

```
adb shell setprop debug.oculus.experimentalEnabled 0
```
