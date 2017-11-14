set -ex

bazel build //:BasicSample //:BasicSampleTest

adb shell pm uninstall com.example.android.testing.espresso.BasicSample.test
adb shell pm uninstall com.example.android.testing.espresso.BasicSample

adb install bazel-bin/BasicSample.apk
adb install bazel-bin/BasicSampleTest.apk

adb shell am instrument com.example.android.testing.espresso.BasicSample.test/android.support.test.runner.AndroidJUnitRunner
