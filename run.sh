# Get the PID of the process with port
pid=$(lsof -t -i :8005)

# Check if PID is not empty and kill the process
if [ -n "$pid" ]; then
    echo "Killing process with PID: $pid"
    kill $pid
else
    echo "Process not found"
fi

nohup ~/projects/venv/bin/uvicorn main:app --host 0.0.0.0 --port 8005 --ssl-keyfile ~/.acme.sh/py.cirray.cn_ecc/py.cirray.cn.key --ssl-certfile ~/.acme.sh/py.cirray.cn_ecc/py.cirray.cn.cer >> ~/temp/py.log &