from typing import Optional
from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return 'Nguyen Thanh Vinh - VINHNT48'

if __name__ == '__main__':
    uvicorn.run(app,port=8000,host="0.0.0.0")