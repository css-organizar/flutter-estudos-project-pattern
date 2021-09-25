# Exemplos de Estrutura de Aplicativos com Flutter

## Estrutura de Pastas

* lib
  * application
    * componentes
    * functions
    * helpers
    * widgets
  * domain
    * entities
    * interfaces
  * infrastructure
    * repositories
    * resources
    * services
  * presentation
    * views

## Exemplos Apresentados

### app-base: Aplicação base Flutter

Exemplo de estrutura simples de aplicação flutter

### app-base-getx: Aplicação base Flutter com GetX

Exemplo de estrutura de aplicação flutter utilizando o package GetX

pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

  cupertino_icons: ^1.0.2
  get: ^4.3.8

dev_dependencies:
  flutter_test:
    sdk: flutter
```

* Recursos Utilizados
  * Navegação com Rotas
  * Route Observers
  * Injeção de Dependências
  * Gerenciamento de Estados
