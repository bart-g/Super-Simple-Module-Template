//
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.company_name }}. All rights reserved.
//

import UIKit

protocol {{ cookiecutter.module_name }}Building {
     static func build() -> UIViewController
}

enum {{ cookiecutter.module_name }}Builder: {{ cookiecutter.module_name }}Building {
    
    static func build() -> UIViewController {
        let navigation = {{ cookiecutter.module_name }}Navigation()
        let interaction = {{ cookiecutter.module_name }}Interaction(navigation: navigation)
        let {{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController = {{ cookiecutter.module_name }}ViewController(interaction: interaction)
        interaction.use({{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController)
        navigation.use({{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController)
        
        return {{ cookiecutter.module_name[0]|lower + cookiecutter.module_name[1:] }}ViewController
    }
}
