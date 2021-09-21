select load_plan_name,trunc(start_time), sum(rows_inserted)
from wc_odi_run_stats_f
where load_plan_name IN (/*'PROJECT FUSION FREQUENT REFRESH_23_20200327_113249',*/'PROJECT FUSION DAILY REFRESH_22_20190315_073423')
AND trunc(start_time) > trunc(sysdate - 50)
group by load_plan_name,trunc(start_time)
order by trunc(start_time) desc;
