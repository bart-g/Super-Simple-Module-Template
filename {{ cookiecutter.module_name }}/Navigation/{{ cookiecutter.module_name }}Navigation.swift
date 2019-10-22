//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

protocol {{ cookiecutter.module_name }}Navigating: AnyObject {
    func use(_ viewController: ViewControlling)
}

final class {{ cookiecutter.module_name }}Navigation: {{ cookiecutter.module_name }}Navigating {
    
    private weak var viewController: ViewControlling!
    
    func use(_ viewController: ViewControlling) {
        self.viewController = viewController
    }
}
