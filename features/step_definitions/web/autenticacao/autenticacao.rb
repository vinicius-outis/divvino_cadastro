Quando("abrir login") do
  @main_header.abrir_login
  @login = $web_pages.login
end

Quando("realizar login com {string} e {string} como {string}") do |user, pass, name|
  step 'abrir login'
  @user = { :user => user, :pass => pass, :name => name }
  @login.realizar_login(user, pass)
end

Quando("realizar cadastro com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |cpf, data_n, apelido, nome, email, conf_email, senha, conf_senha, telefone|
  @main_header.abrir_cadastro
  @cadastro = $web_pages.cadastro
  @cadastro.realizar_cadastro(cpf, data_n, apelido, nome, email, conf_email, senha, conf_senha, telefone)
end

Então("deverá ser exibido o nome do usuário no header") do
  expect(@main_header.span_name.text).to have_content /#{@user[:name]}/i
end

Então("deverá ser exibido o nome do usuário no header {string}") do |apelido|
  expect(@main_header.span_name.text).to have_content /#{apelido}/i
end
