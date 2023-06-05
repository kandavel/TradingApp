

import Foundation

protocol NetworkReachable {}

extension NetworkReachable {
    func checkReachability() -> (reachable: Bool, error: Error?) {
        if let reachability = TLReachabilityHelper.shared.reachability {
            if !reachability.isReachable {
                let userInfo: [String : Any] = [NSLocalizedDescriptionKey : NSLocalizedString("kOfflineMessage", comment: "Your Internet Connection seems offline!")]
                let err = NSError(domain: "", code: Constants.noInternetCode, userInfo: userInfo)
                return (false, err)
            }
        }
        return (true, nil)
    }
}
