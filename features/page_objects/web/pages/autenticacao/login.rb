module Web
  module Pages
    module Autenticacao
      class Login < SitePrism::Page
        set_url '/login'

        element :input_user, '#user'
        element :input_pass, 'input[name="pass"]'
        element :btn_logar, '#loginSubmit'

        def realizar_login(user, pass)
          input_user.gset user
          input_pass.gset pass
          btn_logar.gclick
        end
      end
    end
  end
end
