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
    sqlQuery = '''
    SELECT * FROM Employee
    '''
    try:
        cur.execute(sqlQuery)
        results=cur.fetchall()
        for row in results:
            name=row[0]
            email=row[1]
            age=row[2]
            print('Name:%s,Email:%s,Age:%s'%(name,email,age))
    except pymysql.Error as e:
        print("Unable To Fetch The Data From Database")
    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Connected Successfully" + str(e))
