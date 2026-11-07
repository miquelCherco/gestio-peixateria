-- Gestió Peixateria v7.0: sincronització automàtica per registre.
-- Executa aquest script a Supabase > SQL Editor. És segur executar-lo més d'una vegada.
create table if not exists public.peixateria_records (
  owner_id uuid not null references auth.users(id) on delete cascade,
  collection text not null check (collection in ('clients','suppliers','articles','docs','lotja','moves','cash','config','attachments')),
  record_id text not null,
  payload jsonb,
  updated_at timestamptz not null default now(),
  deleted_at timestamptz,
  primary key (owner_id, collection, record_id)
);
alter table public.peixateria_records enable row level security;
drop policy if exists "Usuari pot llegir els seus registres" on public.peixateria_records;
drop policy if exists "Usuari pot inserir els seus registres" on public.peixateria_records;
drop policy if exists "Usuari pot modificar els seus registres" on public.peixateria_records;
create policy "Usuari pot llegir els seus registres" on public.peixateria_records for select to authenticated using (auth.uid() = owner_id);
create policy "Usuari pot inserir els seus registres" on public.peixateria_records for insert to authenticated with check (auth.uid() = owner_id);
create policy "Usuari pot modificar els seus registres" on public.peixateria_records for update to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
grant select, insert, update on public.peixateria_records to authenticated;

create table if not exists public.peixateria_sync_state (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  migration_completed boolean not null default false,
  prefer_local_on_first_sync boolean not null default false,
  updated_at timestamptz not null default now()
);
alter table public.peixateria_sync_state enable row level security;
drop policy if exists "Usuari pot llegir el seu estat" on public.peixateria_sync_state;
drop policy if exists "Usuari pot inserir el seu estat" on public.peixateria_sync_state;
drop policy if exists "Usuari pot modificar el seu estat" on public.peixateria_sync_state;
create policy "Usuari pot llegir el seu estat" on public.peixateria_sync_state for select to authenticated using (auth.uid() = owner_id);
create policy "Usuari pot inserir el seu estat" on public.peixateria_sync_state for insert to authenticated with check (auth.uid() = owner_id);
create policy "Usuari pot modificar el seu estat" on public.peixateria_sync_state for update to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
grant select, insert, update on public.peixateria_sync_state to authenticated;

create table if not exists public.peixateria_sync_state (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  migration_completed boolean not null default false,
  prefer_local_on_first_sync boolean not null default false,
  updated_at timestamptz not null default now()
);
alter table public.peixateria_sync_state enable row level security;
drop policy if exists "Usuari pot llegir el seu estat" on public.peixateria_sync_state;
drop policy if exists "Usuari pot inserir el seu estat" on public.peixateria_sync_state;
drop policy if exists "Usuari pot modificar el seu estat" on public.peixateria_sync_state;
create policy "Usuari pot llegir el seu estat" on public.peixateria_sync_state for select to authenticated using (auth.uid() = owner_id);
create policy "Usuari pot inserir el seu estat" on public.peixateria_sync_state for insert to authenticated with check (auth.uid() = owner_id);
create policy "Usuari pot modificar el seu estat" on public.peixateria_sync_state for update to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
grant select, insert, update on public.peixateria_sync_state to authenticated;
