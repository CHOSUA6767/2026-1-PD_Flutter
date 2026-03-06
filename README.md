# 2026-1-PD_Flutter

Flutter_setup
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flutter 개발 환경 구축 가이드</title>
    <link href="https://fonts.googleapis.com/css2?family=Pretendard:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --flutter-blue: #02569B;
            --flutter-light-blue: #13B9FD;
            --bg-color: #f0f2f5;
            --text-main: #333333;
            --text-muted: #666666;
            --code-bg: #282c34;
            --code-text: #abb2bf;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Pretendard', -apple-system, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            line-height: 1.7;
            padding-bottom: 50px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background-color: #ffffff;
            padding: 50px 0;
            text-align: center;
            border-bottom: 4px solid var(--flutter-light-blue);
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            margin-bottom: 40px;
        }

        header h1 {
            color: var(--flutter-blue);
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        header p {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        .step-card {
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
            border-left: 6px solid var(--flutter-light-blue);
            transition: transform 0.2s ease;
        }

        .step-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        }

        .step-title {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            color: var(--flutter-blue);
            font-size: 1.5rem;
            font-weight: 700;
        }

        .step-number {
            background-color: var(--flutter-blue);
            color: #ffffff;
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            margin-right: 15px;
            font-size: 1.2rem;
        }

        h3 {
            margin: 20px 0 10px 0;
            font-size: 1.2rem;
            color: #444;
        }

        p, ul, ol {
            margin-bottom: 15px;
        }

        ul, ol {
            padding-left: 20px;
        }

        li {
            margin-bottom: 8px;
        }

        .code-block {
            background-color: var(--code-bg);
            color: var(--code-text);
            padding: 15px;
            border-radius: 8px;
            overflow-x: auto;
            font-family: 'Courier New', Courier, monospace;
            margin: 15px 0;
            font-size: 0.95rem;
        }

        .note {
            background-color: #e3f2fd;
            border-left: 4px solid var(--flutter-blue);
            padding: 15px;
            border-radius: 4px;
            margin: 15px 0;
            font-size: 0.95rem;
        }

        .image-placeholder {
            text-align: center;
            margin: 25px 0;
            padding: 20px;
            background: #fafafa;
            border: 1px dashed #ccc;
            border-radius: 8px;
            color: var(--text-muted);
            font-style: italic;
        }

        a {
            color: var(--flutter-light-blue);
            text-decoration: none;
            font-weight: 600;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <header>
        <div class="container">
            <h1>Flutter 개발 환경 구축 가이드</h1>
            <p>Windows 및 macOS 환경에서 Flutter 시작하기</p>
        </div>
    </header>

    <main class="container">
        <div class="step-card">
            <div class="step-title">
                <span class="step-number">1</span>
                Flutter SDK 다운로드 및 설치
            </div>
            <p>Flutter 개발을 위해서는 먼저 공식 SDK를 다운로드하고 시스템 환경 변수에 등록해야 합니다.</p>
            
            <ol>
                <li><a href="https://docs.flutter.dev/get-started/install" target="_blank">Flutter 공식 홈페이지</a>에 접속하여 본인의 운영체제에 맞는 SDK 압축 파일을 다운로드합니다.</li>
                <li>원하는 경로(예: <code>C:\src\flutter</code> 또는 <code>~/development/flutter</code>)에 압축을 해제합니다.</li>
                <li>운영체제의 <strong>환경 변수(Environment Variables)</strong> 설정에서 <code>Path</code>에 Flutter의 <code>bin</code> 폴더 경로를 추가합니다.</li>
            </ol>

            <div class="image-placeholder">
                
            </div>

            <div class="note">
                <strong>주의:</strong> Windows 환경의 경우 권한 문제가 발생할 수 있으므로 <code>C:\Program Files\</code> 폴더에는 설치하지 않는 것을 권장합니다.
            </div>
        </div>

        <div class="step-card">
            <div class="step-title">
                <span class="step-number">2</span>
                Android Studio 설치 및 설정
            </div>
            <p>Android 앱 빌드 및 에뮬레이터 사용을 위해 Android Studio 설치가 필수적입니다.</p>

            <ol>
                <li><a href="https://developer.android.com/studio" target="_blank">Android Studio 공식 사이트</a>에서 다운로드 및 설치를 진행합니다.</li>
                <li>설치 완료 후 실행하여 초기 설정 마법사(Setup Wizard)를 완료합니다. 이때 최신 <strong>Android SDK, Android SDK Command-line Tools, Android SDK Build-Tools</strong>가 설치되도록 확인합니다.</li>
            </ol>

            <div class="image-placeholder">
                
            </div>

            <div class="note">
                <strong>라이선스 동의:</strong> 터미널을 열고 아래 명령어를 입력하여 Android 라이선스에 모두 동의(`y` 입력)해야 합니다.
                <div class="code-block">flutter doctor --android-licenses</div>
            </div>
        </div>

        <div class="step-card">
            <div class="step-title">
                <span class="step-number">3</span>
                VS Code 설치 및 확장 프로그램 설정
            </div>
            <p>가볍고 강력한 편집기인 Visual Studio Code를 주력 IDE로 사용하는 것을 추천합니다.</p>

            <ol>
                <li><a href="https://code.visualstudio.com/" target="_blank">VS Code</a>를 다운로드하고 설치합니다.</li>
                <li>VS Code 실행 후 좌측의 확장(Extensions) 아이콘을 클릭합니다.</li>
                <li>검색창에 <code>Flutter</code>를 검색하고 공식 확장 프로그램을 설치합니다. (Dart 확장 프로그램도 자동으로 함께 설치됩니다.)</li>
            </ol>

            <div class="image-placeholder">
                
            </div>
        </div>

        <div class="step-card">
            <div class="step-title">
                <span class="step-number">4</span>
                Flutter Doctor로 환경 점검
            </div>
            <p>모든 설치가 끝났다면, Flutter 도구가 환경이 제대로 구축되었는지 점검해 줍니다.</p>
            
            <p>터미널(또는 명령 프롬프트)을 열고 아래 명령어를 실행하세요.</p>
            <div class="code-block">flutter doctor</div>

            <p>실행 결과에서 모든 항목에 녹색 체크 표시(✔️)가 뜨면 개발 준비가 완료된 것입니다. 만약 <code>[!]</code> 또는 <code>[X]</code> 표시가 있다면 해당 항목의 안내에 따라 추가 설정을 진행해 주세요.</p>

            <div class="image-placeholder">
                
            </div>
        </div>

        <div class="step-card">
            <div class="step-title">
                <span class="step-number">5</span>
                첫 Flutter 프로젝트 생성하기
            </div>
            <p>환경 설정이 완벽하게 끝났습니다! 이제 첫 프로젝트를 생성해 볼 차례입니다.</p>
            <p>터미널에서 프로젝트를 생성할 폴더로 이동한 뒤 아래 명령어를 입력합니다.</p>
            <div class="code-block">flutter create my_first_app<br>cd my_first_app<br>flutter run</div>
            <p>에뮬레이터나 연결된 기기에 기본 카운터 앱이 실행된다면 성공입니다!</p>
        </div>
    </main>

</body>
</html>