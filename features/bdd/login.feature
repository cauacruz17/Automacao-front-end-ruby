#language: pt

Funcionalidade: Login

@Login
Cenario: Login com sucesso
Dado que o Usuario acesse a tela de login
Quando ele digitar as credenciais validas
Entao deve acessar o site ou aplicativo com sucesso

@Login1
Cenario: Login falhou
Dado que o  Usuario tente entrar na sistema
Quando ele Digitar as credencias invalidas 
Entao deve aparecer a mensagem de erro

