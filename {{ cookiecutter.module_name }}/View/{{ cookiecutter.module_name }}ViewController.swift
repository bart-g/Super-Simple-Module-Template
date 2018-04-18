//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

import UIKit

protocol {{ cookiecutter.module_name }}Presenting: class {}

final class {{ cookiecutter.module_name }}ViewController: UIViewController {
    
    private let interaction: {{ cookiecutter.module_name }}Interacting
    
    init(interaction: {{ cookiecutter.module_name }}Interacting) {
        self.interaction = interaction
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension {{ cookiecutter.module_name }}ViewController: {{ cookiecutter.module_name }}Presenting {}

