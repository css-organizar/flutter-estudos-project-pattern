# Exemplos de Estrutura de Aplicativos com Flutter

Repositório de projetos simples para implementação de estrutura de pastas de um aplicativo com flutter.

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

* Recursos Apresentados
  * Navegação com Rotas
  * Route Observers
  * Injeção de Dependências
  * Gerenciamento de Estados

pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:  <------ Adicionado
    sdk: flutter  <-------------- Adicionado

  cupertino_icons: ^1.0.2
  get:  <------------------------ Adicionado

dev_dependencies:
  flutter_test:
    sdk: flutter
```
