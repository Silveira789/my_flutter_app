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


lib/
├── main.dart             # Ponto de entrada da aplicação e rotas nomeadas
├── models/               # Modelos de dados (Post, User, Comentário)
│   ├── post.dart
│   ├── user.dart
│   └── comment.dart
├── screens/              # Telas do app
│   ├── home/
│   │   └── home_screen.dart
│   ├── posts/
│   │   ├── posts_screen.dart
│   │   └── post_details_screen.dart
│   ├── profile/
│   │   └── profile_screen.dart
│   ├── settings/
│   │   └── settings_screen.dart
│   └── users/
│       └── users_screen.dart
├── services/             # Serviços de API e lógica de dados
│   └── api_service.dart
└── widgets/              # Widgets reutilizáveis (ex: FeatureCard)
└── feature_card.dart


