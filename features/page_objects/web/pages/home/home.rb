require_relative '../../sections/headers/main_header.rb'

module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :main_header, Web::Sections::Headers::MainHeader, '.navbar_fixed_top'
      end
    end
  end
end
