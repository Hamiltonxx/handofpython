import random 
import string 
import mysql.connector
dbconfig = {"host":"aigc.cirray.cn","user":"aigc","password":"aigc2023","database":"pydb"}

from fastapi import Depends, HTTPException
from fastapi.security import HTTPBearer 
bearer_scheme = HTTPBearer()

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


def get_user(auth:str=Depends(bearer_scheme), cnx=Depends(get_cnx)):
    if not auth:
        raise HTTPException(status_code=403, detail="Missing Authorization")
    token = auth.credentials 
    cur = cnx.cursor()
    cols = ["id","name","avatar","phone","age","sex","grade","createtime","token"]
    sql = f"SELECT {','.join(cols)} FROM user WHERE token='{token}'"
    cur.execute(sql)
    result = cur.fetchone()
    if result:
        ret = dict(zip(cols,result))
        return ret 
    else:
        raise HTTPException(status_code=403, detail="Authorization is invalid")