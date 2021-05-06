Dado('que esteja na home') do
  @home = $web_pages.home
  @home.load
  @main_header = @home.main_header
end
