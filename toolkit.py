import random 
import string 
import mysql.connector
dbconfig = {"host":"aigc.cirray.cn","user":"aigc","password":"aigc2023","database":"pydb"}

# 定义mysql连接依赖项
def get_cnx():
    try:
        cnx = mysql.connector.connect(**dbconfig)
        yield cnx
    finally:
        cnx.close()

# def random_digits(length):
#     return random.randrange(10**(length-1), 10**length)
def random_string(length):
    letters = string.ascii_letters + string.digits
    return ''.join(random.choice(letters) for _ in range(length))
