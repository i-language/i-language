@echo off
find  "sql_close_v(z_p.ROLLBACK,1);" *.* > __FIND.TMP 
start notepad __FIND.TMP
