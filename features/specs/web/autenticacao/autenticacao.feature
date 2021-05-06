#language: pt

@autenticacao
Funcionalidade: Autenticação

  Contexto: Acesso
    Dado que esteja na home

    @login
    Esquema do Cenário: Login
      Quando realizar login com '<user>' e '<pass>' como '<name>'
      Então deverá ser exibido o nome do usuário no header
      Exemplos:
        | user                   | pass   | name           |
        | test@automation.com.br | 123456 | automation1822 |

    @cadastro
    Esquema do Cenário: Cadastro
      Quando realizar cadastro com '<cpf>', '<data_n>', '<apelido>', '<nome>', '<email>', '<conf_email>', '<senha>', '<conf_senha>', '<telefone>'
      Então deverá ser exibido o nome do usuário no header '<header>'

      Exemplos:
          | cpf            | data_n          | apelido | nome         | email                   |   conf_email            |  senha    | conf_senha   |  telefone        | header       |
          | 793.804.840-20 | 21-10-2001      | Hat     | Hatshep Sut  | teste@hatshep.com       |   teste@hatshep.com     | senha321  | senha321        |  (45) 99999-3399 | Olá, Hat     |
