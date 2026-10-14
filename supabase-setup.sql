-- 독서 퀴즈 점수 테이블
-- Supabase 대시보드 > SQL Editor 에 붙여넣고 Run 을 누르세요.

create table if not exists public.scores (
  id         bigint generated always as identity primary key,
  name       text        not null check (char_length(name) between 1 and 20),
  score      integer     not null check (score between 0 and 100),
  answers    jsonb,
  created_at timestamptz not null default now()
);

alter table public.scores enable row level security;

-- 학생(로그인 없음)은 점수를 추가하고 읽을 수만 있어요. 수정·삭제는 불가.
create policy "anyone can submit a score"
  on public.scores for insert
  to anon
  with check (true);

create policy "anyone can read scores"
  on public.scores for select
  to anon
  using (true);

grant select, insert on public.scores to anon;
