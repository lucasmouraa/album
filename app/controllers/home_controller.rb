class HomeController < ApplicationController
  def index
     @users = User.order(:nome)
  end
end
