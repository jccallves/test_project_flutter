# test_project

Um novo projeto Flutter

## Iniciando

## Boas práticas
    Criar o projeto de forma adequada informando as opções a serem utilizadas.
    flutter create [ opcoes ]:
    Opções:
        --platforms: Especifica as plataformas-alvo para o seu aplicativo. As opções mais comuns são:

            ** - android**
            ** - ios**
            ** - web**
            ** - macos**
            ** - windows**
            ** - linux**
        --org: Define o identificador da organização, geralmente utilizado para criar pacotes únicos.

        --template: Permite utilizar templates pré-definidos para criar projetos com estruturas específicas, como projetos de teste, aplicativos de exemplo, etc.

        -sample: Similar ao --template, mas oferece exemplos de código para diferentes funcionalidades.

        --description: Adiciona uma descrição ao seu projeto.

        --version: Especifica a versão do Flutter a ser utilizada para criar o projeto.
        
        --project-name: Especifica o nome do projeto.

## Organização das pastas

## Arquitetura Limpa
    lib/
        core/
            application/
                services/
                    http/

            useCases/
                controllers/

            domain/
                entities/
            
            presentation/
                pages/
                components/
                cubit/
                
            data/
                repositories/
                databases/

## Dependências
    - bloc
    - flutter_bloc (cubit)
    - equatable
    - go_router
    - logger
    - http
    - google_fonts
    - infinite_scroll_pagination
    - Firebase Remote Config
    - Awesome Snackbar Content
    - Animations
    - Neopop
    - PDFx
    - Material Floating Search Bar
    - Toastification
    - Flutter Card Swiper
    - Native Storage


## Referências
    - Light theme / Dark theme : https://www.youtube.com/watch?v=LHocQR95Sxc&ab_channel=RipplesCode
    - Cubit (flutter_bloc): https://www.youtube.com/watch?v=jW6npWvWcNI&pp=ygUFY3ViaXQ%3D