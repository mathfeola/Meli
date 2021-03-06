//
//  Created by matheus.feola on 30/06/19.
//

import SnapKit

extension UIViewController: Loadable {
    
    var activityIndicatorView: LoadingView {
        return LoadingView.viewInstance
    }
    
    func showLoading() {
        self.view.addSubview(activityIndicatorView)
        self.activityIndicatorView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
    
    func hideLoading() {
        activityIndicatorView.removeFromSuperview()
    }
}
