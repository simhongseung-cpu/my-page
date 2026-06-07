# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 프로젝트 개요

심홍승 님의 개인 소개 페이지(포트폴리오 웹사이트). 병원 홍보담당자, 콘텐츠 크리에이터, 캐릭터 이모티콘 작가로서의 역할을 소개하는 단일 페이지 사이트입니다.

## 아키텍처

### 기술 스택
- **마크업**: HTML5 (단일 파일 구조)
- **스타일링**: 인라인 CSS (embedded `<style>` 블록)
- **폰트**: Google Fonts (Black Han Sans, Nanum Square)
- **배포**: 정적 HTML 파일 (빌드 프로세스 불필요)

### 페이지 구조
`index.html`은 다음 섹션으로 구성됩니다:
1. **Hero 섹션** — 큰 이름과 한 줄 태그라인 (72→52px 반응형)
2. **Divider** — 파란색 구분선 (시각적 구조 강조)
3. **Role Cards** — 3개 역할 카드 (모바일에서 세로 정렬)

### 디자인 원칙
- **컬러**: 제목(검정), 악센트(파란색 #2563EB), 강조(노란색 #FACC15)
- **반응형**: 640px 브레이크포인트 (카드를 flex-direction: column으로 전환)
- **타이포그래피**: Black Han Sans(제목), Nanum Square(본문)
- **레이아웃**: 최대 너비 840px, 중앙 정렬

## 파일 안내

- `index.html` — 메인 페이지 (모든 콘텐츠 포함)
- `내소개.md` — 한글 자기소개 문서 (텍스트 내용 레퍼런스)

## 개선 시 주의사항

- **폰트 변경**: Google Fonts 링크 변경 후 CSS 선택자도 함께 수정
- **색상 팔레트**: 세 가지 주요 색상(검정, 파란색, 노란색) 유지
- **카드 추가**: 현재 3카드 구조에서 4개 이상 추가 시, 모바일 반응형 확인 필수
- **콘텐츠 길이**: 카드 설명은 짧게 유지 (2~3줄 권장, 텍스트 오버플로우 방지)
