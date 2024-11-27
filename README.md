<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=0500ff&height=180&section=header"/>

<h4 align="center">
  <img src="assets/Logo.png" alt="Logo" width="150"/>
</h4>

## Teste Técnico Mobile BeTalent

Este projeto foi desenvolvido como parte do Teste Técnico Mobile da BeTalent, utilizando Flutter. Ele consiste na construção de uma interface que exibe uma tabela com dados provenientes de uma API simulada e funcionalidades de pesquisa e filtragem.


## 📸 Screenshot

<img width="150px" src="https://github.com/user-attachments/assets/08b631ea-92c3-48b9-a311-309ab97c74b2"/>
<img width="150px" src="https://github.com/user-attachments/assets/3bbfb251-2df3-494f-8980-d1370709a2cd"/>
<img width="150px" src="https://github.com/user-attachments/assets/ee6e9038-5eb3-4d93-aa32-c06ae9de7f30"/>
<img width="150px" src="https://github.com/user-attachments/assets/b5cebbd6-6f2f-4d8b-9cef-703b63368ec6"/>
<img width="150px" src="https://github.com/user-attachments/assets/049de755-934f-4f0d-bef9-0a54d8e0a907"/>

## Tecnologias utilizadas
Esse projeto foi desenvolvido utilizando as seguintes tecnologias:

![](https://skillicons.dev/icons?i=dart,flutter)

### Funcionalidades Implementadas

- [x]  Exibição de uma tabela com as colunas:
- [x] Imagem (thumbnail do usuário);
- [x] Nome;
- [x] Cargo;
- [x] Data de Admissão (formatada no frontend);
- [x] Telefone (formatado no frontend).

### Campo de pesquisa que permite filtrar por:
- [x] Nome;
- [x] Cargo;
- [x] Telefone.

## Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:
- Flutter (3.24.5)
- Dart
- Git
- json-server

## Packages Utilizadas

- **sdk: flutter**:   O projeto utiliza o SDK do Flutter como base para o desenvolvimento da aplicação.  

- **cupertino_icons:**   Inclui ícones no estilo iOS para serem usados com widgets Cupertino, proporcionando uma aparência nativa no iOS.  

- **google_fonts:**   Permite o uso de fontes do Google na aplicação, facilitando a personalização da tipografia.  

- **http:**   Biblioteca para realizar requisições HTTP, essencial para consumir dados da API simulada.  

- **intl:**  Fornece ferramentas para internacionalização e formatação de datas, números e moedas, garantindo que os dados sejam exibidos no formato correto.  

- **currency_text_input_formatter:** Utilizada para formatar campos de entrada de texto como valores monetários.  

- **mask_text_input_formatter:** Permite aplicar máscaras em campos de texto, como formatação de telefones e datas, garantindo a entrada correta de dados pelo usuário.  

## Como Rodar o Projeto


1. **Clone este repositório:**
   ```bash
   git clone https://github.com/vlopess/betalent.git
   ```
2. **Instale e inicie o json-server para consumir a API simulada:**
   ```bash
   cd betalent
   cd API/
   npm install json-server
   npx json-server db.json  
   cd desafio-mobile/
   npx json-server --watch database.json
   ```
   
2. **Execute o projeto Flutter:**
  ```bash
   flutter pub get  
   flutter run  
  ```
### Observações

Configuração de IP e Caminho Parcial: A aplicação utiliza uma constante para definir o IP da API simulada e constrói dinamicamente o caminho base para as requisições.  

> Importante: Certifique-se de que o IP esteja correto e acessível na sua rede local para que a aplicação consiga consumir os dados da API.

```dart  
static const String _ip = "192.168.10.14";  //_ip: Define o endereço IP da máquina que hospeda a API simulada.
static String get _partialPath => "http://$_ip:3000";  

```

<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=0500ff&height=180&section=footer"/>

