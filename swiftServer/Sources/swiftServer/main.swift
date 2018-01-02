print("Hello, world!")

let server = CXServer()
server.configRoutes([test])
server.startServer()
