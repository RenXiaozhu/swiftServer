import PerfectHTTPServer
import PerfectHTTP
import PerfectLib

class CXServer {
    let server = HTTPServer()
    
    //    static let shareServer = CXServer()
    
    init() {
        setupServer()
    }
    
    private func setupServer() {
        server.serverPort = 8080
        server.serverName = "localhost"
        server.documentRoot = "./webroot"
    }
    
    func configRoutes(_ routes: [Routes]) {
        for route in routes {
            server.addRoutes(route)
        }
    }
    
    
    //MARK: - 启动服务
    func startServer() {
        do {
            // Launch the servers based on the configuration data.
            //try HTTPServer.launch(configurationData: confData)
            try server.start()
        } catch {
            fatalError("\(error)") // fatal error launching one of the servers
        }
    }
    
}
