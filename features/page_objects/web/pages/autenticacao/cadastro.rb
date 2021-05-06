module Web
  module Pages
    module Autenticacao
      class Cadastro < SitePrism::Page
        set_url '/'
        element :input_cpf, '#cpf'
        element :input_data_n, '#dateOfBirth'
        element :input_apelido, '#chamado'
        element :input_nome, '#nome'
        element :input_email, '#email'
        element :input_conf_email, '#conf-email'
        element :input_senha, '#senha'
        element :input_conf_senha, '#confsenha'
        element :label_sexo_M, 'label[for=radio1]'
        element :input_phone, '#phone'
        element :btn_send, '#send'

        def realizar_cadastro(cpf, data_n, apelido, nome, email, conf_email, senha, conf_senha, phone)
          input_cpf.gset cpf
          input_data_n.gset data_n
          input_apelido.gset apelido
          input_nome.gset nome
          input_email.gset email
          input_conf_email.gset conf_email
          input_senha.gset senha
          input_conf_senha.gset conf_senha
          label_sexo_M.gclick
          input_phone.gset phone
          btn_send.gclick
        end
      end
    end
  end
end
