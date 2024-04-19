from fastapi import APIRouter, Depends, HTTPException, Header, Body 
from toolkit import get_cnx, get_user

router = APIRouter()

@router.post('/submission', tags=['题目'])
def submit_problem(pid:int=Body(embed=True), codes:str=Body(embed=True), user=Depends(get_user), cnx=Depends(get_cnx)):
    '''提交答案/代码'''
    cur = cnx.cursor(buffered=True)
    sql = f"INSERT INTO submission(pid,codes,userid) VALUES({pid},'{codes}',{user['id']})"
    print(sql)
    cur.execute(sql)
    cnx.commit()
    return 'Submission Succeed'

@router.get('/my_submissions', tags=['题目'])
def my_submissions(user=Depends(get_user), cnx=Depends(get_cnx)):
    '''我的提交列表'''
    cur = cnx.cursor(buffered=True)
    cols = ["id","pid","codes","status","runtime","memory","createtime"]
    sql = f'''SELECT {",".join(cols)} FROM submission WHERE userid={user["id"]}'''
    cur.execute(sql)
    result = cur.fetchall()
    ret = [dict(zip(cols, r)) for r in result]
    return ret
