from fastapi import FastAPI

app = FastAPI(title="FYP DevSecOps Demo API", version="0.1.0")

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/api/message")
def message():
    return {"message": "Hello from the FastAPI backend!"}
