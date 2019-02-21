import pymysql

DBNAME = "dbtest"
DBHOST = "localhost"
DBPASS = 'root'
DBUSER = "root"

try:
    # 打开数据库连接
    db = pymysql.connect(DBHOST, DBUSER, DBPASS, DBNAME)
    print("Database Connected Successfully")
    # 创建一个游标
    cur=db.cursor()
    # 编辑sql语句
    sqlQuery='DROP TABLE IF EXISTS Employee'
    cur.execute(sqlQuery)
    print('Table Dropped Successfully!')
    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Dropped Successfully" + str(e))
