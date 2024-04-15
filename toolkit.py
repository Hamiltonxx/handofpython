import mysql.connector
dbconfig = {"host":"aigc.cirray.cn","user":"aigc","password":"aigc2023","database":"pydb"}

# 定义mysql连接依赖项
def get_cnx():
    try:
        cnx = mysql.connector.connect(**dbconfig)
        yield cnx
    finally:
        cnx.close()