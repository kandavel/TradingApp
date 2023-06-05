

import Foundation


typealias ResultCallback<T> = (Result<T, NetworkError>)

protocol NetworkManagerProtocol  : AnyObject {
    func request<T: Codable>(_ request: APIRouter,
                             decodeToType type: T.Type,
                             completionHandler: @escaping (ResultCallback<T>) -> Void)
}

final class NetworkManager {
    static let shared: NetworkManager = {
        let instance = NetworkManager()
        return instance
    }()
    
    func isConnectedToInternet() -> Bool {
        return checkReachability().reachable 
    }
    
    
    fileprivate let parser: Parser =  Parser()
    
    func request<T: Codable>(_ endpoint: APIRouter,decodeToType type: T.Type,completionHandler: @escaping (ResultCallback<T>) -> Void) {
        if let reachabilityError = checkReachability().error {
            completionHandler(.failure(.reachabilityError(error: reachabilityError)))
            return
        }
        guard let request = endpoint.request else {
            completionHandler(.failure(NetworkError.invalidRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: request) { [unowned self] (data, response, error) in
            if let error = error {
                completionHandler(.failure(.responseError(error: error)))
                return
            }
            guard let data = data else {
                completionHandler(.failure(NetworkError.dataMissing))
                return
            }
            self.parser.json(data: data, completition: completionHandler)
        }
        task.resume()
    }
}

extension NetworkManager : NetworkManagerProtocol,NetworkReachable {
    
    
}
