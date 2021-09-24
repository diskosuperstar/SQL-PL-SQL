
-- rows inserted by day of a load plan
select load_plan_name,trunc(start_time), sum(rows_inserted)
from wc_odi_run_stats_f
where load_plan_name IN (/*'PROJECT FUSION FREQUENT REFRESH_23_20200327_113249',*/'PROJECT FUSION DAILY REFRESH_22_20190315_073423')
AND trunc(start_time) > trunc(sysdate - 50)
group by load_plan_name,trunc(start_time)
order by trunc(start_time) desc;


--rows inserted, load time by scenario in a load plan
select target_table, scenario_name,start_time, load_time, rows_inserted,rows_updated
from wc_odi_run_stats_f
where trunc(start_time) between trunc(sysdate - 1) and trunc(sysdate - 0)
and load_plan_name IN (/*'PROJECT FUSION FREQUENT REFRESH_23_20200327_113249',*/'PROJECT FUSION DAILY REFRESH_22_20190315_073423')
order by load_time_total desc;
