# Projeto Flutter - Avaliação Final

## Descrição

Este projeto é um aplicativo mobile desenvolvido com Flutter e Dart, para Android, como parte da avaliação final de um curso. O app consome dados da API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com) para exibir posts, permite visualização detalhada, adiciona comentários locais, e inclui navegação entre telas com passagem de parâmetros.

O projeto também possui telas de configuração, perfil de usuário com edição simples, e layout responsivo para diferentes tamanhos de tela. Todo o código está versionado no GitHub com commits organizados.

---

## Funcionalidades

- Visualização de posts com títulos e conteúdos formatados
- Tela de detalhes dos posts com comentários adicionados pelo usuário
- Navegação entre telas usando rotas nomeadas e passagem de parâmetros
- Tratamento de estados de carregamento, erro e dados vazios na API
- Tela inicial simplificada com menu lateral contendo Configurações e Sobre o App
- Tela de perfil do usuário com exibição e edição de nome e email
- Layout responsivo para diferentes tamanhos de tela e dispositivos
- Testado em dispositivo físico Android

---

## Tecnologias Utilizadas

- Flutter (>= 3.x)
- Dart
- Android SDK
- API externa: JSONPlaceholder
- Git e GitHub para versionamento

---

## Como rodar o projeto

### Pré-requisitos

- Flutter SDK instalado: [Flutter Install](https://flutter.dev/docs/get-started/install)
- Android Studio instalado com SDK Android configurado
- Dispositivo físico Android conectado via USB com modo desenvolvedor ativado ou emulador Android configurado
- Git instalado

### Estrutura do Projeto:

O código está organizado para facilitar manutenção e escalabilidade, conforme explicado abaixo:

- **`lib/main.dart`**  
  Arquivo principal que inicializa o app, define as rotas nomeadas e configura o tema.

- **`lib/models/`**  
  Contém as classes que representam os dados usados na aplicação, como `Post`, `User` e `Comment`.  
  Essas classes facilitam o mapeamento dos dados JSON recebidos da API para objetos Dart.

- **`lib/screens/`**  
  Pasta com todas as telas do aplicativo, separadas em subpastas por funcionalidade:
    - **home/**: Tela inicial com opções para navegar ao restante do app.
    - **posts/**: Tela para listar posts e tela de detalhes de cada post.
    - **profile/**: Tela de perfil do usuário, exibindo e permitindo edição simples dos dados.
    - **settings/**: Tela de configurações do app.
    - **users/**: Tela para visualizar lista de usuários (se implementada).

- **`lib/services/`**  
  Contém classes responsáveis pelo acesso e consumo da API, além do tratamento dos dados antes de serem utilizados nas telas.

- **`lib/widgets/`**  
  Contém widgets reutilizáveis usados em diferentes partes do app, como cartões de funcionalidade e componentes UI customizados.

---


