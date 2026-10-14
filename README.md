# 독서 퀴즈

『만복이네 떡집』을 읽고 푸는 수업용 퀴즈 웹앱. 학생은 이름을 적고 4문제를 차례로 풀고, 제출하면 자신의 점수와 반 전체 중 순위를 봅니다.

## 파일

| 파일 | 설명 |
| --- | --- |
| `index.html` | 학생용 퀴즈 페이지. 점수를 Supabase `scores` 테이블에 저장하고 순위를 계산합니다. |
| `supabase-setup.sql` | `scores` 테이블과 접근 정책(추가·읽기만 허용)을 만드는 SQL. |
| `reading-quiz.html` | claude.ai 아티팩트 버전(claude.ai 내부 저장소 사용, Supabase 미사용). |

## 처음 설정

1. Supabase 대시보드 → SQL Editor에서 `supabase-setup.sql`을 실행합니다.
2. `index.html`을 웹에 올리고(GitHub Pages, Netlify 등) 학생들에게 주소를 줍니다.

`index.html`에 들어 있는 `sb_publishable_...` 키는 브라우저용 공개 키입니다. `service_role` 또는 `sb_secret_...` 키는 절대 넣지 마세요.

## 문제 바꾸기

`index.html`의 `QUESTIONS` 배열을 고치면 됩니다. `accept`에 정답으로 인정할 표현을 넣습니다(띄어쓰기는 무시).
