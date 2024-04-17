import os
import shutil 
from fastapi import APIRouter, Depends, HTTPException, Header, Body, Response, UploadFile, File 

router = APIRouter()

@router.post('/deploy_project', tags=["工程"])
def deploy_project(file:UploadFile=File(...)):
    '''工程部署, 把dist目录打成zip包, 上传此接口就能完成前端部署  
    示例: curl -X POST -F "file=@dist.zip" https://py.cirray.cn:8005/deploy_project'''

    if os.path.exists('/home/ubuntu/prj/dist'):
        shutil.rmtree('/home/ubuntu/prj/dist')
    os.makedirs(f'/home/ubuntu/prj/dist', exist_ok=True)

    with open('/home/ubuntu/prj/dist.zip', 'wb') as f:
        shutil.copyfileobj(file.file, f)

    shutil.unpack_archive('/home/ubuntu/prj/dist.zip', '/home/ubuntu/prj/')

    return 'Deploy Succeed'

