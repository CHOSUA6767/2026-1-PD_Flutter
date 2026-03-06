# Flutter 개발 환경 구축 가이드
Windows 및 macOS 환경에서 Flutter 시작하기

---

## 1️⃣ Flutter SDK 다운로드 및 설치
Flutter 개발을 위해서는 먼저 공식 SDK를 다운로드하고 시스템 환경 변수에 등록해야 합니다.

1. [Flutter 공식 홈페이지](https://docs.flutter.dev/get-started/install)에 접속하여 본인의 운영체제에 맞는 SDK 압축 파일을 다운로드합니다.
2. 원하는 경로(예: `C:\src\flutter` 또는 `~/development/flutter`)에 압축을 해제합니다.
3. 운영체제의 **환경 변수(Environment Variables)** 설정에서 `Path`에 Flutter의 `bin` 폴더 경로를 추가합니다.

> 💡 **주의:** Windows 환경의 경우 권한 문제가 발생할 수 있으므로 `C:\Program Files\` 폴더에는 설치하지 않는 것을 권장합니다.

---

## 2️⃣ Android Studio 설치 및 설정
Android 앱 빌드 및 에뮬레이터 사용을 위해 Android Studio 설치가 필수적입니다.

1. [Android Studio 공식 사이트](https://developer.android.com/studio)에서 다운로드 및 설치를 진행합니다.
2. 설치 완료 후 실행하여 초기 설정 마법사(Setup Wizard)를 완료합니다. 이때 최신 **Android SDK, Android SDK Command-line Tools, Android SDK Build-Tools**가 설치되도록 확인합니다.

> 💡 **라이선스 동의:** 터미널을 열고 아래 명령어를 입력하여 Android 라이선스에 모두 동의(`y` 입력)해야 합니다.
> ```bash
> flutter doctor --android-licenses
> ```

---

## 3️⃣ VS Code 설치 및 확장 프로그램 설정
가볍고 강력한 편집기인 Visual Studio Code를 주력 IDE로 사용하는 것을 추천합니다.

1. [VS Code](https://code.visualstudio.com/)를 다운로드하고 설치합니다.
2. VS Code 실행 후 좌측의 확장(Extensions) 아이콘을 클릭합니다.
3. 검색창에 `Flutter`를 검색하고 공식 확장 프로그램을 설치합니다. (Dart 확장 프로그램도 자동으로 함께 설치됩니다.)

---

## 4️⃣ Flutter Doctor로 환경 점검
모든 설치가 끝났다면, Flutter 도구가 환경이 제대로 구축되었는지 점검해 줍니다. 터미널(또는 명령 프롬프트)을 열고 아래 명령어를 실행하세요.

```bash
flutter doctor