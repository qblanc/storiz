class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end

# Make sure your production DOMAIN variable is set with your domain name.
# If you deploy your code with Heroku for instance, just type in your terminal:
# heroku config:set DOMAIN=www.my_product.com
# You can check it's properly set with heroku config:get DOMAIN.
