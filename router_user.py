import random
from fastapi import APIRouter, Depends, HTTPException, Header, Body 
from toolkit import get_cnx

router = APIRouter()

@router.post('/send_vericode', tags=["用户"])
def send_vericode(phone:str=Body(embed=True), cnx=Depends(get_cnx)):
    '''手机号登录前, 需要获取4位验证码  
    开发阶段就不发短信了, 直接把接口返回的验证码填到验证码框即可'''
    cur = cnx.cursor(buffered=True)
    randcode = random.randint(1000,9999)
    # 查看验证码获取是否频繁
    # 把验证码插入user表
    sql = f"INSERT INTO user(phone,vericode) VALUES('{phone}',{randcode})"
    print(sql)
    cur.execute(sql)
    cnx.commit()
    userid = cur.lastrowid
    return {"userid":userid, "phone":phone, "vericode":randcode}
