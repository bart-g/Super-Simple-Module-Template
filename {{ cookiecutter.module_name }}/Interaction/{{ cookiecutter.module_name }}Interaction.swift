//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

protocol {{ cookiecutter.module_name }}Interacting: AnyObject {
    func use(_ renderer: {{ cookiecutter.module_name }}Rendering)
}

final class {{ cookiecutter.module_name }}Interaction: {{ cookiecutter.module_name }}Interacting {
    
    private weak var renderer: {{ cookiecutter.module_name }}Rendering?
    private let navigation: {{ cookiecutter.module_name }}Navigating
    
    init(navigation: {{ cookiecutter.module_name }}Navigating) {
       self.navigation = navigation
    }
    
    func use(_ renderer: {{ cookiecutter.module_name }}Rendering) {
        self.renderer = renderer
    }
}
