//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

import UIKit

protocol {{ cookiecutter.module_name }}Assembling {
     static func assemble() -> UIViewController
}

enum {{ cookiecutter.module_name }}Assembler: {{ cookiecutter.module_name }}Assembling {
    
    static func assemble() -> UIViewController {
        let navigation = {{ cookiecutter.module_name }}Navigation()
        let interaction = {{ cookiecutter.module_name }}Interaction(navigation: navigation)
        let {{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController = {{ cookiecutter.module_name }}ViewController(interaction: interaction)
        navigation.use({{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController)
        
        return {{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController
    }
}
