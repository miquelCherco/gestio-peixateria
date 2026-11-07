-- Gestió Peixateria v6.7 - configuració inicial Supabase
-- Executa aquest script una sola vegada a Supabase > SQL Editor.
create table if not exists public.peixateria_sync (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.peixateria_sync enable row level security;
drop policy if exists "Usuari pot llegir les seves dades" on public.peixateria_sync;
drop policy if exists "Usuari pot inserir les seves dades" on public.peixateria_sync;
drop policy if exists "Usuari pot modificar les seves dades" on public.peixateria_sync;
create policy "Usuari pot llegir les seves dades" on public.peixateria_sync for select to authenticated using (auth.uid() = owner_id);
create policy "Usuari pot inserir les seves dades" on public.peixateria_sync for insert to authenticated with check (auth.uid() = owner_id);
create policy "Usuari pot modificar les seves dades" on public.peixateria_sync for update to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
grant select, insert, update on public.peixateria_sync to authenticated;
