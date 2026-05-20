# Checkmate - Flutter 모바일 앱

친구들과 함께 인증하고 끝까지 완주하는 다이어트/운동 인증 앱

## 📱 프로젝트 구조

```
flutter_checkmate/
├── lib/
│   ├── main.dart                      # 앱 진입점
│   └── screens/
│       ├── login_screen.dart          # 1. 로그인 화면
│       ├── signup_screen.dart         # 2. 회원가입 화면
│       ├── home_screen.dart           # 3. 홈/내 인증방 목록
│       ├── create_room_screen.dart    # 4. 방 생성 화면
│       ├── join_room_screen.dart      # 5. 방 참여 화면
│       ├── room_dashboard_screen.dart # 6. 방 상세 대시보드
│       ├── member_status_screen.dart  # 7. 멤버별 현황
│       ├── submit_proof_screen.dart   # 8. 인증 제출
│       ├── proof_feed_screen.dart     # 9. 인증 피드/확인
│       └── my_page_screen.dart        # 10. 마이페이지/포인트
└── pubspec.yaml                       # 의존성 설정
```

## 🚀 실행 방법

### 1. Flutter SDK 설치
```bash
# Flutter SDK 다운로드 및 설치
# https://flutter.dev/docs/get-started/install

# 설치 확인
flutter doctor
```

### 2. 프로젝트 의존성 설치
```bash
cd flutter_checkmate
flutter pub get
```

### 3. 앱 실행
```bash
# iOS 시뮬레이터 실행 (macOS 전용)
flutter run -d ios

# Android 에뮬레이터 실행
flutter run -d android

# Chrome 웹 실행 (데스크톱 미리보기)
flutter run -d chrome
```

## 🎨 디자인 특징

### 색상 팔레트
- **Primary**: `#3B82F6` (파란색)
- **Success**: `#22C55E` (초록색)
- **Warning**: `#F97316` (주황색)
- **Error**: `#EF4444` (빨간색)
- **Background**: `#F8FAFC` (연한 회색)

### 주요 기능
- ✅ 10개의 완전한 화면 구현
- ✅ Material Design 3 적용
- ✅ 390x844 모바일 프레임 최적화
- ✅ 그라데이션, 그림자, 둥근 카드 디자인
- ✅ 상태 배지 및 진행률 표시
- ✅ 반응형 레이아웃

## 📦 사용된 패키지

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
```

## 🔧 개발 환경

- **Flutter SDK**: 3.0.0 이상
- **Dart SDK**: 3.0.0 이상
- **지원 플랫폼**: iOS, Android, Web

## 📸 스크린샷 가이드

각 화면별 주요 기능:

1. **로그인** - 그라데이션 배경, 브랜드 아이덴티티
2. **회원가입** - 가입 보너스 안내, 폼 검증
3. **홈** - 포인트 카드, 참여 방 목록, 하단 네비게이션
4. **방 생성** - DAILY/WEEKLY 선택, 동적 폼
5. **방 참여** - 초대 코드 입력, 방 정보 미리보기
6. **대시보드** - 오늘 인증 현황, 멤버 요약
7. **멤버 현황** - 개별 진행률, 상태별 배지
8. **인증 제출** - 텍스트/사진/동영상 업로드
9. **인증 피드** - 타임라인, 확인 기능
10. **마이페이지** - 프로필, 포인트 이력

## 🛠️ 빌드 및 배포

### Android APK 빌드
```bash
flutter build apk --release
```

### iOS IPA 빌드
```bash
flutter build ios --release
```

### 웹 빌드
```bash
flutter build web
```

## 📝 참고사항

- 이 프로젝트는 React 버전에서 Flutter로 완전히 변환되었습니다
- 모든 화면은 정적 목업이며, 백엔드 연동은 포함되지 않았습니다
- 실제 기능 구현 시 상태 관리 라이브러리(Provider, Riverpod 등) 추가 권장

## 👨‍💻 개발자

React to Flutter 변환 by Claude Code

## 📄 라이센스

이 프로젝트는 MIT 라이센스를 따릅니다.
