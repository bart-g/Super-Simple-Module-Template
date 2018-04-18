//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

protocol {{ cookiecutter.module_name }}Interacting {
    func use(_ view: {{ cookiecutter.module_name }}Presenting)
}

final class {{ cookiecutter.module_name }}Interaction: {{ cookiecutter.module_name }}Interacting {
    
    private weak var view: {{ cookiecutter.module_name }}Presenting?
    private let navigation: {{ cookiecutter.module_name }}Navigating
    
    init(navigation: {{ cookiecutter.module_name }}Navigating) {
       self.navigation = navigation
    }
    
    func use(_ view: {{ cookiecutter.module_name }}Presenting) {
        self.view = view
    }
}
