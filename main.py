from fastapi import FastAPI, HTTPException, Depends
from fastapi.middleware.cors import CORSMiddleware
from toolkit import get_cnx

app = FastAPI()
# 添加CORS中间件
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

@app.get('/')
def hello():
    return 'Hello world'

@app.get('/problems', tags=['题目'])
def get_problems(cnx=Depends(get_cnx)):
    cur = cnx.cursor()
    cols = ["id","title","description","passrate","difficulty","tags","cid","chapter","codeinit","createtime"]
    sql = f"SELECT {','.join(cols)} FROM problem"
    cur.execute(sql)
    result = cur.fetchall()
    ret = [dict(zip(cols,r)) for r in result]
    return ret 

@app.get('/collections', tags=['题集'])
def get_collections(cnx=Depends(get_cnx)):
    cur = cnx.cursor()
    cols = ["id","name","author","createtime"]
    sql = f"SELECT {','.join(cols)} FROM collection"
    cur.execute(sql)
    result = cur.fetchall()
    ret = [dict(zip(cols,r)) for r in result]
    return ret