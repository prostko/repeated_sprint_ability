require 'rails/application_controller'

class StaticController < Rails::ApplicationController
  def index
    render file: Rails.root.join('frontend_rsa', 'index.html')
  end
end
