import cx_Oracle
dsn = cx_Oracle.makedsn('hostname', 'port', service_name='servicename')
orcl = cx_Oracle.connect(user='db user', password='db pass', dsn=dsn)
cursor = orcl.cursor()
rs = cursor.execute("select * from SNP_LP_INST")
for row in rs:
    print(row)
