from fastapi import APIRouter, Depends, HTTPException, Header, Body 
from toolkit import get_cnx

router = APIRouter()

@router.post('/submit', tags=['题目'])
def submit_problem(cnx=Depends(get_cnx)):
    '''提交答案/代码'''
    pass