android_sdk_repository(name = "androidsdk")
android_ndk_repository(name = "androidndk")

# git_repository(
#     name = "android_test_support",
#     commit = "525d675e2d63dee98bfe6ee09ad5bfc8e8a8fef1",
#     remote = "https://github.com/google/android-testing-support-library.git",
# )

local_repository(
      name = "android_test_support",
      path = "/usr/local/google/home/jingwen/code/atsl",
)

load("@android_test_support//tools/android/emulator:unified_launcher.bzl", "load_workspace")
load_workspace()

git_repository(
    name = 'gmaven_rules',
    remote = 'https://github.com/aj-michael/gmaven_rules',
    commit = 'ccf6e13ba9357e6845179fe90e78b0fa24bd9f2b',
)
load('@gmaven_rules//:gmaven.bzl', 'gmaven_rules')
gmaven_rules()

maven_jar(
    name = "com_google_inject_guice",
    artifact = "com.google.inject:guice:4.0",
)

maven_jar(
    name = "junit_junit",
    artifact = "junit:junit:4.12",
)

maven_jar(
    name = "javax_inject_javax_inject",
    artifact = "javax.inject:javax.inject:1",
)

maven_jar(
    name = "org_hamcrest_java_hamcrest",
    artifact = "org.hamcrest:java-hamcrest:2.0.0.0",
)

maven_jar(
    name = "com_google_guava_guava",
    artifact = "com.google.guava:guava:18.0",
)
