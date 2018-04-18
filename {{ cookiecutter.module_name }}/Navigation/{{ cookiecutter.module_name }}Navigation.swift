//
//  Copyright © {% now 'local', '%Y' %} auraspace. All rights reserved.
//

import UIKit

protocol {{ cookiecutter.module_name }}Navigating {
    func use(_ viewController: ViewControlling)
}

final class {{ cookiecutter.module_name }}Navigation: {{ cookiecutter.module_name }}Navigating {
    
    private weak var viewController: ViewControlling?
    
    func use(_ viewController: ViewControlling) {
        self.viewController = viewController
    }
}
