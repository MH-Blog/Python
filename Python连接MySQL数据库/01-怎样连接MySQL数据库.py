import pymysql

DBNAME = "dbtest"
DBHOST = "localhost"
DBPASS = 'root'
DBUSER = "root"

try:
    # 打开数据库连接
    db = pymysql.connect(DBHOST, DBUSER, DBPASS, DBNAME)
    print("Database Connected Successfully")

    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Connected Successfully" + str(e))
