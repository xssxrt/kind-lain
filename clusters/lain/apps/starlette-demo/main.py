from starlette.applications import Starlette
from starlette.responses import JSONResponse
from starlette.routing import Route
import os

MESSAGE = os.environ.get("MESSAGE")
if not MESSAGE:
    MESSAGE = "MESSAGE was not set"

async def message(request) -> None:
    return JSONResponse({"message": MESSAGE})

app = Starlette(debug=True, routes=[Route('/message', message)])

