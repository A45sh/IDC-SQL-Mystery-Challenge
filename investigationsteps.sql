select * from evidence where room = 'CEO Office';

select e.name, k.entry_time, k.exit_time
from keycard_logs k
join employees e on k.employee_id = e.employee_id
where k.room = 'CEO Office'
and k.entry_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00';

select e.name, a.claimed_location, a.claim_time, k.room as actual_room, k.entry_time, k.exit_time
from alibis a
join employees e on a.employee_id = e.employee_id
left join keycard_logs k on a.employee_id = k.employee_id
where a.claim_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00'
and (k.room is not null and a.claimed_location <> k.room);

select c.call_id, e1.name as caller, e2.name as receiver, c.call_time, c.duration_sec
from calls c
join employees e1 on c.caller_id = e1.employee_id
join employees e2 on c.receiver_id = e2.employee_id
where c.call_time between '2025-10-15 20:50:00' and '2025-10-15 21:00:00'
order by c.call_time;

with present AS (
  select k.employee_id
  from keycard_logs k
  where k.room = 'CEO Office'
  and k.entry_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00'
),
liars AS (
  select a.employee_id
  from alibis a
  join keycard_logs k on a.employee_id = k.employee_id
  where a.claim_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00'
    and a.claimed_location <> k.room
),
callers AS (
  select distinct caller_id as employee_id
  from calls
  where call_time between '2025-10-15 20:50:00' and '2025-10-15 21:00:00'
)
select e.name
from employees e
where e.employee_id in (select employee_id from present)
  and e.employee_id in (select employee_id from liars)
  and e.employee_id in (select employee_id from callers);
