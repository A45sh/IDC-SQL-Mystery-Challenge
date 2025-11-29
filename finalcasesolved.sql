with suspects as (
   select k.employee_id
   from keycard_logs k
   where k.room = 'CEO Office'
   and k.entry_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00'
),
liars as (
   select a.employee_id
   from alibis a
   join keycard_logs k on a.employee_id = k.employee_id
   where a.claimed_location <> k.room
   and a.claim_time between '2025-10-15 20:50:00' and '2025-10-15 21:10:00'
),
callers as (
   select distinct caller_id as employee_id
   from calls
   where call_time between '2025-10-15 20:50:00' and '2025-10-15 21:00:00'
)

select e.name as killer
from employees e
where e.employee_id in (select employee_id from suspects)
  and e.employee_id in (select employee_id from liars)
  and e.employee_id in (select employee_id from callers);
