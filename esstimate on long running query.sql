SELECT
    s.inst_id,
    s.sid,
    s.serial#,
    sl.qcsid,
    s.username,
    s.module,
    sl.opname,
    sl.time_remaining / 60 time_remaining,
    s.machine,
    sl.sql_id
FROM
    gv$session          s,
    gv$session_longops  sl
WHERE
        s.sid = sl.sid
    AND s.inst_id = sl.inst_id
    AND s.serial# = sl.serial#
    and sl.totalwork<>sl.sofar;
