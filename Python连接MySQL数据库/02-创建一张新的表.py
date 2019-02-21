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
    # 在创建前先查询是否存在,如果存在则删除
    cur.execute('DROP TABLE IF EXISTS Employee')
    # 编辑sql语句
    sqlQuery='''
    CREATE TABLE Employee(
    Name CHAR(20) NOT NULL ,
    Email CHAR(20),
    Age int )
    '''
    cur.execute(sqlQuery)
    print('Table Created Successfully!')
    # 关闭数据库连接
    db.close()

except pymysql.Error as e:
    print("Database Not Connected Successfully" + str(e))
