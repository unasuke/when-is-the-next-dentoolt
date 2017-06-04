from kobin import Kobin, JSONResponse
app = Kobin()

@app.route('/')
def index() -> JSONResponse:
    return JSONResponse({
        "date": "2017-06-04T04:30:00.000Z",
        "server": "python/kobin"
        })
