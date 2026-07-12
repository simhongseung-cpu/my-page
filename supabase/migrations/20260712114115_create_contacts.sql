-- ============================================================
-- 문의(contacts) 테이블
-- 방문자가 랜딩페이지에서 남긴 문의(이름·이메일·내용)를 저장한다.
-- ============================================================

create table if not exists public.contacts (
  id         uuid        primary key default gen_random_uuid(),
  name       text        not null check (char_length(name) between 1 and 200),
  email      text        not null check (char_length(email) between 3 and 320),
  message    text        not null check (char_length(message) between 1 and 5000),
  created_at timestamptz not null default now()
);

-- ------------------------------------------------------------
-- 보안: 행 수준 보안(RLS) 켜기
-- RLS를 켜면 기본적으로 아무도 접근할 수 없고,
-- 아래에서 명시적으로 허용한 동작만 가능해진다.
-- ------------------------------------------------------------
alter table public.contacts enable row level security;

-- 방문자(anon)에게는 "문의 등록(insert)"만 허용한다.
-- 읽기(select)·수정(update)·삭제(delete)는 허용하지 않으므로,
-- 공개 키로는 남이 남긴 문의를 볼 수 없다.
-- (내가 문의를 확인할 때는 Supabase 대시보드에서 보면 된다.)
create policy "익명 사용자 문의 등록 허용"
  on public.contacts
  for insert
  to anon
  with check (true);
