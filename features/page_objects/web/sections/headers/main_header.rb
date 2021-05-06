module Web
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :btn_login, '#loginAutoUser'
        element :btn_cadastrar, '#registerUserModal'
        element :span_name, '.top_menu_ul li:nth-child(1) a'

        def abrir_login
          btn_login.gclick
        end

        def abrir_cadastro
          btn_cadastrar.gclick
        end
      end
    end
  end
end
