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
    sqlQuery='''
    INSERT INTO Employee (Name, Email, Age) VALUE (%s,%s,%s)
    '''
    value=('Mike','123456@163.com',20)
    try:
        cur.execute(sqlQuery,value)
        db.commit()
        print('Data Inserted Successfully!')
    except pymysql.Error as e:
        print("Failed To Insert The Data" )
    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Connected Successfully" + str(e))
