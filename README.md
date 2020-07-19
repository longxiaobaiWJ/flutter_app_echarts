# flutter_echarts

A new Flutter application.

## 1. Getting Started

```shell
# Android Studio plugins => https://plugins.jetbrains.com/

# 在项目目录下运行
flutter package get # flutter pub get
```



## 2. Issue

1. 初次运行卡在Running Gradle task 'assembleDebug' 解决方法：

修改flutter安装目录下，`/packages/flutter_tools/gradle/flutter.gradle`
`private static final String MAVEN_REPO = "https://storage.googleapis.com/download.flutter.io";`改为`private static final String MAVEN_REPO = "https://mirrors.tuna.tsinghua.edu.cn/flutter/download.flutter.io";`

