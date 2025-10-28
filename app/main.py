from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/")
def root():
    return {"msg": "hello world via KEDA HTTP"}

@app.get("/work")
def work(s: float = 30.0):
    time.sleep(max(0.0, min(float(s), 120.0)))
    return {"ok": True, "slept_s": s}
