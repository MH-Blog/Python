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
    cur = db.cursor()
    # 编辑sql语句
    sqlQuery = "UPDATE Employee SET Name= %s WHERE Name=%s"
    value = ('John', 'updated name')
    try:
        cur.execute(sqlQuery, value)
        db.commit()
        print('Date Updated Successfully')
    except pymysql.Error as e:
        print("Failed To Updated The Data")
    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Connected Successfully" + str(e))
