import random
from fastapi import APIRouter, Depends, HTTPException, Header, Body 
from toolkit import get_cnx, random_string

router = APIRouter()

@router.post('/send_vericode', tags=["用户"])
def send_vericode(phone:str=Body(embed=True), cnx=Depends(get_cnx)):
    '''手机号登录前, 需要获取4位验证码  
    开发阶段就不发短信了, 直接把接口返回的验证码填到验证码框即可'''
    cur = cnx.cursor(buffered=True)
    randcode = random.randint(1000,9999)
    # 查看验证码获取是否频繁
    # 把验证码插入user表,先查表看是insert还是update
    sql = f"UPDATE user SET vericode={randcode} WHERE phone='{phone}'"
    print(sql)
    cur.execute(sql)
    cnx.commit()
    if cur.rowcount == 0: 
        sql = f"INSERT INTO user(phone,vericode) VALUES('{phone}',{randcode})"
        print(sql)
        cur.execute(sql)
        cnx.commit()
    return {"phone":phone, "vericode":randcode}

@router.post('/vericode_login', tags=["用户"])
def vericode_login(phone:str=Body(embed=True),vericode:int=Body(embed=True),cnx=Depends(get_cnx)):
    '''手机验证码登录'''
    cur = cnx.cursor(buffered=True)
    cols = ["id","name","avatar","phone","age","sex","grade","token"]
    sql = f"SELECT {','.join(cols)} FROM user WHERE phone='{phone}' AND vericode='{vericode}'"
    print(sql)
    cur.execute(sql)
    result = cur.fetchone()
    if not result:
        raise HTTPException(status_code=404, detail='账号错误')
    ret = dict(zip(cols, result))
    if not ret["token"]:
        token = random_string(16)
        sql = f"UPDATE user SET token='{token}' WHERE phone='{phone}'"
        cur.execute(sql)
        cnx.commit()
        ret['token'] = token
    return ret
